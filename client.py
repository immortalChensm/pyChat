import socket
import threading
from multiprocessing import Pool,Process,Queue
import os,time,sys

local = threading.local()
event = threading.Event()
class Client():
    def __init__(self,user):
        self.isLogin = False
        self.user = user

    def run(self):
        client = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
        client.connect(("127.0.0.1",8090))
        threading.Thread(target=self.request,args=(client,)).start()
        threading.Thread(target=self.response,args=(client,)).start()

    def request(self,client):

        while True:
            if not self.isLogin:
                self.registerRequest(client)
            else:
                pass

            time.sleep(2)
            print("正在进入基友聊天室系统...........")
            self.talkRequest(client)



    def talkRequest(self,client):
        print("您已进入基友聊天室可随便玩")
        while True:
            data = self.getInput("")
            if data:
                # 聊天请求：message:send:参数[from_user,to_user,content]
                postStr = self.user + "," + data
                message = "message:sendMessage:%s" % (postStr)
                client.send(message.encode("utf8"))


    def registerRequest(self,client):
        username = self.getInput("请输入您的账号：")
        qq = self.getInput("请输入您的qq号：")
        #发起注册请求:profile:register:参数
        data = username+","+qq
        message = "profile:register:%s"%data
        if message:
            client.send(message.encode("utf8"))

    def getInput(self,msg):
        return str(input(msg))

    def response(self,client):

        while True:
            data = client.recv(1024*10000)
            data = data.decode("utf8")
            self.responseParse(data,1)
    def responseParse(self,data,type):
        result = data.split(":")
        serviceName = result[0]
        code = result[1]
        response_data = result[2]

        if serviceName=='register-all':
            print("\r\n"+response_data+"\r\n")
        if serviceName=='register-only':
            self.user = result[3]
            print("\r\n"+response_data+"\r\n")
        if serviceName=='message':
            print("\r\n"+response_data+"\r\n")
        if serviceName=='baidu':
            print("\r\n"+data+"\r\n")


if __name__ == '__main__':
    local.user = '未登录'
    client = Client(local.user)
    client.run()