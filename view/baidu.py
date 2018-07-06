import urllib.request
import urllib.parse

import ssl
import json
import os
import time
from pyquery import PyQuery as pq
import requests


def getContent(url):

    data = {}
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"
    }
    response = requests.get(url,headers=headers)
    response.encoding='utf8'
    doc = pq(response.text)
    return doc("html").text()

def get(words):
    url = "http://www.baidu.com/s?wd="
    keywords = urllib.request.quote(words)
    url = url+keywords
    #postStr = urllib.parse.urlencode(words).encode("utf8")
    headers = {
        "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"
    }
    print(url)

    req = urllib.request.Request(url,headers=headers)
    context = ssl._create_unverified_context()
    response = urllib.request.urlopen(req,context=context)
    #con = response.read().decode("utf8")
    with open("baidu.html","wb") as f:
        f.write(response.read())
    f.close()

    with open("baidu.html","rb") as f:
        con = f.read()
    f.close()
    doc = pq(con)
    container = doc("#content_left h3 a").items()
    text = doc("#content_left div.c-row").items()
    link = doc("#content_left h3 a").items()
    baidu = {}
    title = []
    for item in container:
        baidu[item.text()] = item.attr.href
        title.append(item.text())

    return {
        "baidu":baidu,
        "title":title
    }

