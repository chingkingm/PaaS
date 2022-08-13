## docker拉取两个镜像

```bash
docker pull mysql:5.7
docker pull wordpress:5
```

## 创建网络

```bash
docker network create webnet
```



## 创建脚本文件用来运行容器

```bash
vim mysql_create.sh
```

![image-20220805182213207](C:\Users\123\AppData\Roaming\Typora\typora-user-images\image-20220805182213207.png)

```bash
vim wordpress_create.sh
```

![image-20220805182230146](C:\Users\123\AppData\Roaming\Typora\typora-user-images\image-20220805182230146.png)

## 运行容器

```bash
#切到脚本在的文件夹
sh mysql_create.sh
sh wordpress_create.sh
```

## 图形化界面

浏览器打开172.31.7.x:18080进行配置和发文章