---
title: 利用github.io+HEXO搭建个人博客(mac系统)
---
## 一、环境安装

###1. node.js（在node.js官网中下载安装）[node.js官网][1]

###2. git（OS系统中直接安装x-code就可以了）

###3. hexo

	1）打开OS系统终端

	2）输入安装hexo的代码(此处安装时有可能会提示输入系统管理员密码)
	
``` 
$ sudo npm install -g hexo-cli
```

## 二、hexo创建静态博客
###1. 新建blog文件夹

###2. 在终端进入该文件夹，初始化博客

``` bash
$ hexo init
```
###3. 上述完成后，生成原始文件；blog文件夹就是博客的根目录
 ![image](http://upload-images.jianshu.io/upload_images/2036150-16f9a908e1b7f9dc.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###4. 本地查看：启用本地服务命令(退出按ctrl+c)
```
$ hexo s
```
![image](http://upload-images.jianshu.io/upload_images/2036150-6b9131583bac9a8c.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
###5. 将出现的地址输入浏览器，可在本地查看效果
上图的地址为http://localhost:4000/

##三、github配置

###1. 注册github账号并登陆

###2. 获取本机的SSH口令

1）输入获取代码，回车直到出现图片所示图形为止

	$ ssh-keygen
![image](http://upload-images.jianshu.io/upload_images/2036150-b4743c91bd07f228.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
2）输入编译代码

	$ vim ~/.ssh/id_rsa.pub
	
3）出现SSH口令后，将红框部分复制，并在下方输入:q，随后按下回车可以退出该窗口
![image](http://upload-images.jianshu.io/upload_images/2036150-5b26c3dbd861657b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
4）进入到github页面设置SSH口令

#####*点击用户下拉菜单中的settings	（step1)

#####*点击左侧的SHH and GPG keys	（step2)

#####*在Title中输入口令名称（随意）	（step3)

#####*在key中贴上SSH口令			（step4)
![image](http://upload-images.jianshu.io/upload_images/2036150-ec38c7b0045abe88.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
###3. 创建新的仓库

1）创建新的仓库（New repository）

点击用户左侧的+号菜单中的New repository（step1)

在repository name中输入二级域名，格式请严格遵照username.github.io（step2)

	ps：username填写github的登录用户名，否则上线的时候会报错

是否公开选项可以选取Public（step3)

勾选step4处，会自动生成一份可编辑的README.md文件（建议勾选）（step4)

点击create repository生成仓库完毕（step5)

![image](http://upload-images.jianshu.io/upload_images/2036150-fc479366a8b3002a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
2）查看新建的仓库（repository）

可以回到github个人首页点击右侧的仓库区
![iamge](http://upload-images.jianshu.io/upload_images/2036150-045abf830344e96a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
进入后在step1处选择并复制http地址，注意此时step2处应该是空的
![image](http://upload-images.jianshu.io/upload_images/2036150-b8f7ddf71c2ad702.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
##四、发布博客

###1. 设置blog配置文件

1）打开blog文件夹下的_config.yml文件

2）找到最下方的type，输入git（注意冒号后面是带空格的）

3）repo行可能没有，需要自己输入，后面跟上github上仓库中复制的http地址（注意此时1、2两处应该是一样的username），不然上传时会报错
4）其他博客设置

	title：博客名称

	subtitle：博客副标题

	description：博客描述

	author：作者

	language：语言（简体中文是zh-CN）
	
	
###2. 在终端上传博客

1）进入终端，输入git上传插件安装代码（安装时会提示输入github用户名及密码）

```
$ npm install hexo-deployer-git --save
```
2）安装完毕后，输入获取代码

```
$ hexo g
```
3）最后输入上传代码

```
$ hexo d
```
4）重新在github仓库查看上传文件，此时在step2中会有之前bolg中生成的文件

5）step3处就是你的博客地址
![image](http://upload-images.jianshu.io/upload_images/2036150-b8f7ddf71c2ad702.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
##五、新建与更新博客

###1. 新建博客

1）终端bolg文件下，输入新建博客代码

    $ hexo new 'filename'

2）此时在bolg/source/_posts/下面会看到新建的博客

3）博客文件的后缀是.md文件，OS下推荐使用[MacDown编辑器][2]
若这方法下载不了 可以使用[Homebrew Cask][3]在终端敲命令直接下载解压安装

```
brew cask install macdown
```

###2. 更新博客

1）完成编辑后，在终端上依次重复以下代码（此时必须先将编辑器关闭，否则会出现获取错误）

    $ hexo g
    $ hexo d
2）完成后便能刷新博客网页看到新更新的内容了

##思维导图
![image](http://upload-images.jianshu.io/upload_images/2036150-c5d75791a64b84ef.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)




[1]: https://nodejs.org/en/
[2]: https://github-cloud.s3.amazonaws.com/releases/21089071/ecc5f678-a488-11e6-81d6-477ae7b9db50.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170209%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170209T115245Z&X-Amz-Expires=300&X-Amz-Signature=202f7bfadc59a25f074ab77b12adb79da7dae7b8f71e7e07081a6297ee965716&X-Amz-SignedHeaders=host&actor_id=16658677&response-content-disposition=attachment%3B%20filename%3DMacDown.app.zip&response-content-type=application%2Foctet-stream

[3]: https://caskroom.github.io
