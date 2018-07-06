import view.db as db
import view.baidu as baidu
import re
'''
信息处理模块
'''

def saveMessage(user,to_user,content):
    model = db.Model()
    model.table("message").save({
        "from_user": user,
         "to_user": to_user,
        "content": content,
        "add_time": str(model.getTime())
    })

def sendMessage(param,client,ip,clientList):
    user = param[0]
    content = param[1]
    if '@' in content:
        to_user_data = content.split("@")
        to_user = to_user_data[0]
        to_content = to_user_data[1]
        for item in clientList.keys():
            if item == to_user:
                message = "message:1:[%s]对[您]说：%s" % (user, to_content)
            else:
                message = "message:1:[%s]对[%s]说：%s" % (user, to_user, to_content)
        saveMessage(user, to_user, content)
        for toClient in clientList.values():
            toClient.send(message.encode("utf8"))

    elif 'help' in content:
        message = '''
        ******************************************************************************************
        ** list[列出当前聊天室用户列表]　get-url[抓取指定链接的内容]　exit[退出]                     **
        ** baidu-内容[搜索百度知道]　                                                             **
        ******************************************************************************************
        '''
        msg = "message:1:%s"%(message)
        client.send(msg.encode("utf8"))
    elif 'list' in content:
        message_start = '''
        ******************************************************************************************
        
        '''
        message_body = ''
        for user in clientList.keys():
            message_body+=str(user)+","

        message_end = '''
        ******************************************************************************************
        
        
        '''
        message = message_start+message_body[0:-1]+message_end+"共%s位"%(len(clientList))
        message = "message:1:"+message
        client.send(message.encode("utf8"))

    elif 'baidu-' in content:
        words = content.split("-")[1]
        baidu_result = baidu.get(words)
        sendMessage.baidu_result = baidu_result
        link = baidu_result['baidu']
        title = baidu_result['title']


        message_start = '''
        ******************************************************************************************
        '''
        message_end = '''
        ******************************************************************************************
        '''
        message_body = ''
        for k in range(len(title)):
            message_body+="       ["+str(k)+"]　"+title[k]+"\r\n"

        msg = message_start+"\r\n"+message_body+"\r\n"+message_end+"\r\n"+"输入[]-数字表示获取某项的内容"

        message = "message:1:" + msg

        client.send(message.encode("utf8"))
    elif '[]-' in content:

        result = content.split("-")
        index = result[1]
        title = sendMessage.baidu_result['title']
        link = sendMessage.baidu_result['baidu']
        item = title[int(index)]

        url = link[item]
        content = baidu.getContent(url)

        message = "baidu:1:" + content
        client.send(message.encode("utf8"))
    elif 'exit' in content:
        pass


    else:
        to_user = "群"
        message = "message:1:[%s]说：%s" % (user, content)
        saveMessage(user, to_user, content)
        for toClient in clientList.values():
            toClient.send(message.encode("utf8"))



