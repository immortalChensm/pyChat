import view.db as db
import view.response as response
clientUser = {}

def logout(param):
    data = param[0].split(",")
    print(data)

def register(param,client,ip,clientList):
    name = param[0]
    qq   = param[1]

    if len(name)<1:
        return {
            "status":0,
            "msg":"注册的用户名填写不正确"
        }
    if len(qq)<1:
        return {
            "status":0,
            "msg":"注册填写的qq号码不正确"
        }


    # 保存用户注册的信息
    model = db.Model()
    existsUser = model.table("user").find({
        "name":name,
    })
    if len(existsUser)>0:
        sendRegisterNotice(clientList, client, name)
        return {
            "status": 1,
            "msg": "登录成功！您的账号是[%s]" % name,
            "result": [name, qq]
        }

    userid = model.table("user").save({
        "name": name,
        "qq": qq,
        "add_time": str(model.getTime()),
        "login_time": str(model.getTime()),
        "ip":str(ip[0]),
        "login_count": "1"
    })
    if userid >= 1:
        #该用户注册成功后，通知所有人，有个家伙注册成功了
        sendRegisterNotice(clientList,client,name)
        return {
            "status": 1,
            "msg": "注册成功！您的账号是[%s]"%name,
            "result":[name,qq]
        }

def sendRegisterNotice(clientList,client,user):
    for clientl in clientList.values():
        if clientl!=client:
            message = "用户%s进来了"%user
            #clientl.send(message.encode("utf8"))
            Res = response.Response()
            Res.success("register-all",message,clientl,1)