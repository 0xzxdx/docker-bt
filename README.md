# Docker BT

搭建私有的BT离线下载，在使用之前请确保你的VPS已经安装[docker](https://docs.docker.com/install/)和[docker-compose](https://docs.docker.com/compose/)

## 使用

```bash
$ git clone https://github.com/anshengme/docker-bt.git bt
$ cd bt
$ docker-compose up -d
```

> 安装速度根据VPS网络决定....，所以你可能需要多等会儿？

安装完成之后默认的`aria2`密码为`ansheng.me`，你可以在`aria2/aria2.conf`中进行修改，修改完成之后通过以下指令重启`aria2`

```bash
$ docker-compose restart aria2
```

关于`h5ai`的配置，你可以修改`store/private/conf/options.json`中修改，因为PHP是静态语言，所以不需要进行重启，修改即生效，刷新即显示。

### 地址

|应用|URL|
|:--|:--|
|AriaNg|http://your_ip:9099/aria2/|
|aria2|http://your_ip:9099/jsonrpc|
|h5ai|http://your_ip:9099/store/|

## 集成包

1. [aria2](https://github.com/aria2/aria2)
2. [AriaNg](https://github.com/mayswind/AriaNg)
3. [h5ai](https://github.com/lrsjng/h5ai)