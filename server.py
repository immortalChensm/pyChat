import socket
import threading

from multiprocessing import Pool,Process,Queue
import os,time,sys
event = threading.Event()
local = threading.local()
import view.user
class Server():
    def __init__(self):
        self.clientList = {}
        self.clientNum = 0
    def run(self):
        server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
        server.bind(("0.0.0.0",8090))
        server.listen(10)
        while True:
            client, ip = server.accept()
            if client:
                #每次接受数据创建一个线程
                threading.Thread(target=self.acceptClient, args=(client,ip)).start()

    def acceptClient(self,client,ip):
        while True:
            if client:
                #接受当前客户端的数据
                data = client.recv(1024)
                #当前数据解码
                data = data.decode("utf8")
                self.parseRequest(client,data,ip)

    def parseRequest(self,client,data,ip):
        if data:
            request = data.split(":")
            #请求的模块    view.user
            serviceName = request[0]
            #动作         register
            actionName  = request[1]
            # 请求参数    name,qq
            params = request[2:]
            obj = __import__('view.'+serviceName,fromlist=True)
            if hasattr(obj,actionName):
                action = getattr(obj,actionName)
                response = action(params[0].split(","),client,ip,self.clientList)
                #注册账号时
                if serviceName=='profile':
                    if response['status'] == 1:
                        self.clientList[response['result'][0]] = client

                    #serviceName:1:result
                    msg = "register-only:1:"+response['msg']+":"+response['result'][0]
                    client.send(msg.encode("utf8"))
                if serviceName=='message':
                    pass

            else:
                errors = 404
                client.send(actionName.encode("utf8"))





if __name__ == '__main__':
    Server = Server()
    Server.run()