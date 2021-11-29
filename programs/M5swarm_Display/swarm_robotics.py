import copy
import argparse
import cv2 as cv
import numpy as np
import mediapipe as mp
# import pyrealsense2 as rs
import time
import requests
import math
import time



def sendHTTPReq(sendURL):
    try:
        response = requests.get(sendURL)
        response.raise_for_status()
    except requests.exceptions.RequestException as e:
        e = e  
    except requests.exceptions.ConnectionError as e:
        e = e
        # print("通信エラー：",e)

# print("5sec")
# time.sleep(5)
# sendHTTPReq("http://192.168.11.7/UP/")
# sendHTTPReq("http://192.168.11.9/UP/")
# time.sleep(0.7)
# sendHTTPReq("http://192.168.11.7/UP/")
# sendHTTPReq("http://192.168.11.9/UP/")
# time.sleep(1.2)
# print("1sec")
# for a in range(20):
#     sendHTTPReq("http://192.168.11.7/UNCLK/")
#     sendHTTPReq("http://192.168.11.9/CLK/")
#     time.sleep(0.1)

# print("3sec")
# time.sleep(2)
# sendHTTPReq("http://192.168.11.7/UNCLK/")
# sendHTTPReq("http://192.168.11.9/CLK/")
# sendHTTPReq("http://192.168.11.10/CLK/")
# sendHTTPReq("http://192.168.11.11/CLK/")
# print("0.3sec")
# time.sleep(0.2)
# sendHTTPReq("http://192.168.11.7/UNCLK/")
# # sendHTTPReq("http://192.168.11.9/CLK/")
# # sendHTTPReq("http://192.168.11.10/UNCLK/")
# # sendHTTPReq("http://192.168.11.11/CLK/")
# time.sleep(0.5)
# sendHTTPReq("http://192.168.11.7/UP/")
# sendHTTPReq("http://192.168.11.9/UP/")
# sendHTTPReq("http://192.168.11.10/UP/")
# sendHTTPReq("http://192.168.11.11/UP/")

# exit()


class getHandDepth:
    distance = 0
    depth_scale = 0
    landmark_point = []

    targetPoint = (0,0)
    IP_tail = [7,9,10,11]
    moving = False

    def __init__(self, parser):
        # 引数解析 
        args = self.getArgs(parser)

        # cap = self.setupWebCamera(args)
        self.handModel = self.setupHandtrackingModel(args)
        # self.setupRealsense()
        self.cap = self.setupWebCamera(args)
        
    

    # ここでparserを占有しちゃっている？
    def getArgs(self, parser):
        parser.add_argument("--device", type=int, default=0)

        # 16:9
        parser.add_argument("--width", help='cap width', type=int, default=640)
        parser.add_argument("--height", help='cap height', type=int, default=480)
        parser.add_argument("--max_num_hands", type=int, default=2)
        parser.add_argument("--min_detection_confidence",
                            help='min_detection_confidence',
                            type=float,
                            default=0.6)
        parser.add_argument("--min_tracking_confidence",
                            help='min_tracking_confidence',
                            type=int,
                            default=0.5)

        parser.add_argument('--use_brect', action='store_true')
        args = parser.parse_args()

        return args


    # TODO：不要なので消していいか確認する
    def setupWebCamera(self, args):
        cap_device = args.device
        cap_width = args.width
        cap_height = args.height

        # カメラ準備
        print("camera setup...")
        cap = cv.VideoCapture(cap_device)
        cap.set(cv.CAP_PROP_FRAME_WIDTH, cap_width)
        cap.set(cv.CAP_PROP_FRAME_HEIGHT, cap_height)

        return cap


    def setupHandtrackingModel(self, args):
        #print("setupHandTrackingModel")
        max_num_hands = args.max_num_hands
        min_detection_confidence = args.min_detection_confidence
        min_tracking_confidence = args.min_tracking_confidence

        use_brect = args.use_brect
        # モデルロード
        #print("model loading...")
        mp_hands = mp.solutions.hands
        hands = mp_hands.Hands(
            max_num_hands=max_num_hands,
            min_detection_confidence=min_detection_confidence,
            min_tracking_confidence=min_tracking_confidence,
        )
        return hands


    def setupRealsense(self):
        #print("setup realsense...")

        # Create a pipeline
        self.pipeline = rs.pipeline()
        config = rs.config() #  different resolutions of color and depth streams

        # デバイスに基づいた解像度の決定
        pipeline_wrapper = rs.pipeline_wrapper(self.pipeline)
        pipeline_profile = config.resolve(pipeline_wrapper)
        device = pipeline_profile.get_device()
        device_product_line = str(device.get_info(rs.camera_info.product_line))

        config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)

        if device_product_line == 'L500':
            # 16:9
            config.enable_stream(rs.stream.color, 960, 540, rs.format.bgr8, 30)
        else:
            config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)

        # Start streaming
        profile = self.pipeline.start(config)

        # Getting the depth sensor's depth scale (see rs-align example for explanation)
        depth_sensor = profile.get_device().first_depth_sensor()
        self.depth_scale = depth_sensor.get_depth_scale()
        print("Depth Scale is: " , self.depth_scale)

        # 1メートル以上の背景を削除
        clipping_distance_in_meters = 1 #1 meter
        clipping_distance = clipping_distance_in_meters / self.depth_scale

        # depth画像とカラー画像の対応付けができるっぽい
        # rs.align allows us to perform alignment of depth frames to others frames
        # The "align_to" is the stream type to which we plan to align depth frames.
        align_to = rs.stream.color
        self.align = rs.align(align_to)


    def calcDistanceForHand(self, depth_image):
        #print("calcDistanceForHand")
        sumVal = 0
        count = 0
        for point in self.landmark_point:
            d = depth_image[point[1]][point[0]] * self.depth_scale
            if d < 1:
                count += 1
                sumVal += d
            else:
                continue
            # print(depth_image[point[1]][point[0]] * self.depth_scale,end=',')

        if sumVal == 0:
            self.distance = 0
            #raise NoHandLandmarks 
            return

        self.distance = (sumVal / count)



    def getHandDistance(self):
        #print("getHandDistance")
        return self.distance


    # 関数内でメモリを消費しまくって問題が生じないか心配。。。
    # クラス名に近い関数名がきっしょい
    def calcHandDistance(self):
        #print("calcHandDistance")
        # カメラキャプチャ準備
        # frames = self.pipeline.wait_for_frames() # Get frameset of color and depth

        ret, frames = self.cap.read()

        color_image = frames
        color_small_image = cv.resize(color_image, (320,240))
        debug_image = copy.copy(color_small_image) 

        # 検出実施  
        color_image2 = copy.copy(color_small_image)
        color_image2 = cv.cvtColor(color_image2, cv.COLOR_BGR2RGB) 
        results = self.handModel.process(color_image2) 

        # 描画  
        if results.multi_hand_landmarks is not None: 
            for hand_landmarks, handedness in zip(results.multi_hand_landmarks, 
                                                results.multi_handedness): 
                # 描画 
                debug_image = self.draw_landmarks(debug_image, hand_landmarks, handedness) 
        else:
            self.distance = 0
            self.moving = False


        # デバッグで表示する用の画像
        self.c_image = copy.copy(color_small_image)
        self.d_image = copy.copy(debug_image)


    def draw_landmarks(self, image, landmarks, handedness):
        image_width, image_height = image.shape[1], image.shape[0]
        self.distance = 0
        self.landmark_point = []

        # キーポイント
        for index, landmark in enumerate(landmarks.landmark):

            if landmark.visibility < 0 or landmark.presence < 0:
                continue

            landmark_x = min(int(landmark.x * image_width), image_width - 1)
            landmark_y = min(int(landmark.y * image_height), image_height - 1)
            # landmark_z = landmark.z

            self.landmark_point.append((landmark_x, landmark_y))


        # 接続線
        if len(self.landmark_point) > 0:
            # distance = self.calcDistanceForHand(depth_image)

            dx = self.landmark_point[4][0]-self.landmark_point[8][0]
            dy = self.landmark_point[4][1]-self.landmark_point[8][1]
            normFing = np.sqrt(dx*dx + dy*dy)
            if normFing < 10:
                # print("closed!")
                cv.circle(image, self.landmark_point[4], 5, (0,0,255),-1)
                self.targetPoint = self.landmark_point[4]
                self.moving = True
            else:
                self.moving = False
            

            # 親指
            cv.line(image, self.landmark_point[2], self.landmark_point[3], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[3], self.landmark_point[4], (0, 255, 0), 2)

            # 人差指
            cv.line(image, self.landmark_point[5], self.landmark_point[6], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[6], self.landmark_point[7], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[7], self.landmark_point[8], (0, 255, 0), 2)

            # 中指
            cv.line(image, self.landmark_point[9], self.landmark_point[10], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[10], self.landmark_point[11], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[11], self.landmark_point[12], (0, 255, 0), 2)

            # 薬指
            cv.line(image, self.landmark_point[13], self.landmark_point[14], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[14], self.landmark_point[15], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[15], self.landmark_point[16], (0, 255, 0), 2)

            # 小指
            cv.line(image, self.landmark_point[17], self.landmark_point[18], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[18], self.landmark_point[19], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[19], self.landmark_point[20], (0, 255, 0), 2)

            # 手の平
            cv.line(image, self.landmark_point[0], self.landmark_point[1], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[1], self.landmark_point[2], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[2], self.landmark_point[5], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[5], self.landmark_point[9], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[9], self.landmark_point[13], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[13], self.landmark_point[17], (0, 255, 0), 2)
            cv.line(image, self.landmark_point[17], self.landmark_point[0], (0, 255, 0), 2)
        return image


    def showImages(self):
        cv.imshow('getHandDepth Demo', self.d_image) 


    def main(self):
        # 出力する動画ファイルの設定
        fourcc = cv.VideoWriter_fourcc(*'XVID')
        video = cv.VideoWriter('output.avi', fourcc, 10, (240, 320))
        
        aruco = cv.aruco
        dictionary = aruco.getPredefinedDictionary(aruco.DICT_4X4_1000)

        try:
            while True:
                start = time.time()
                self.calcHandDistance()
               
                corners, ids, rejectedImgPoints = aruco.detectMarkers(self.d_image, dictionary) 
                # print(ids)
                # print(corners)
                for index, corner in enumerate(corners): # 各マーカの向きを算出
                    # マーカの向きとtargetPointまでのなす角を求める
                    cornerX = corner[0][1] - corner[0][0]
                    cornerY = corner[0][3] - corner[0][0]
                    lengthX = np.linalg.norm(cornerX)
                    lengthY = np.linalg.norm(cornerY)

                    targetDirec = self.targetPoint - corner[0][0]
                    lengthTarget = np.linalg.norm(targetDirec)
                    cv.line(self.d_image, (corner[0][0][0],corner[0][0][1]), self.targetPoint, (255, 0, 0), 2)

                    #ノルム同士の計算
                    ix = np.inner(cornerX/lengthX, targetDirec/lengthTarget)
                    iy = np.inner(cornerY/lengthY, targetDirec/lengthTarget)
                    n = 1 * 1
                    cx = ix / n
                    cy = iy / n
                    rad = math.acos(cx)
                    theta = math.degrees(rad)
                    thetay = int(math.degrees(math.acos(cy))/90)

                    if thetay == 0: # 画像上でy軸は下向き.ひっくり返っている時
                        theta = -theta
                    print(thetay, int(theta), " degrees", end=' ')

                    # 移動方向を決定する処理
                    #here
                    cmd = ""
                    if lengthTarget > 30 and self.targetPoint!=(0,0) and self.moving:
                       if abs(theta) < 45:
                           cmd = "RIGHT"
                           print("→")
                       elif theta < 135 and theta > 45:
                           cmd = "UP"
                           print("↑")
                       elif theta > -135 and theta < -45:
                           cmd = "DOWN"
                           print("↓")
                       else:
                           cmd = "LEFT"
                           print("←")


                    # 命令の送信
                    if ids[index][0] >= 0 and ids[index][0] < 4 and cmd !="":
                        sendURL = "http://192.168.11."+ str(self.IP_tail[ids[index][0]]) +"/" + cmd + "/"
                        sendHTTPReq(sendURL)
                        time.sleep(0.1)


                # print("v:" + str())
                aruco.drawDetectedMarkers(self.d_image, corners, ids, (0,0,255))

                # 画面表示  
                self.showImages()
                video.write(self.d_image)

                # キー処理(ESC：終了)  
                key = cv.waitKey(1) 
                if key == 27:  # ESC 
                    video.release() 
                    break 

                elapsed_time=time.time()-start

                

        finally:
            # self.pipeline.stop()
            cv.destroyAllWindows()



if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    ghd = getHandDepth(parser)
    ghd.main()
