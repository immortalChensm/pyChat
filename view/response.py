class Response():
    def success(self,serviceName, result, client, type):
        message = str(serviceName) + ":" + str(1) + ":" + str(result)
        message = message.encode("utf8")
        if type == 1:
            client.send(message)
        elif type == 2:
            for toClient in client.values():
                toClient.send(message)

    def fail(self,serviceName,  result, client, type):
        message = str(serviceName) + ":" + str(0) + ":" + str(result)
        message = message.encode("utf8")
        if type == 1:
            client.send(message)
        elif type == 2:
            for toClient in client.values():
                toClient.send(message)