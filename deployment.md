# deployment

1. pv_db.yaml,py_wp.yaml

2. pvc_db.yaml,pvc_wp.yaml

3. configmap.yaml

4. secret.yaml

5. deploy_mysql.yaml

6. 创建一个service绑定到mysqldepoly

   ``` bash
   expose --name mysql-svc deploy/mysqldeploy --port 3306 --target-port 3306
   ```

7. 查看上一步生成的service的ip

   ```bash
   [root@master myns01]# kubectl get svc
   NAME        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
   mysql-svc   ClusterIP   10.20.121.189   <none>        3306/TCP       153m
   ```

   

8. 修改configmap.yaml，后重新apply

   ```yaml
   dbhost: 10.20.121.189 # 上一步查的IP
   ```

9. deploy_wp.yaml

10. nodeport.yaml

11. ```bash
    [root@master myns01]# kubectl get svc
    NAME        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
    nd-svc      NodePort    10.20.109.227   <none>        80:31008/TCP   94m
    ```

12. ```bash
    [root@master myns01]# ip add
    ...
    2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
        link/ether 52:54:19:d4:e2:ad brd ff:ff:ff:ff:ff:ff
        inet 192.168.122.11/24 brd 192.168.122.255 scope global noprefixroute eth0
           valid_lft forever preferred_lft forever
        inet6 fe80::4ba4:8a8c:bf77:e969/64 scope link noprefixroute 
           valid_lft forever preferred_lft forever
    ```

13. 图形界面访问192.168.122.11:31008