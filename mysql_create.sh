docker run -itd --name db \
--net webnet \
-v ~/website/dbdata:/var/lib/mysql \
-e MYSQL_USER=user_wp \
-e MYSQL_PASSWORD=training \
-e MYSQL_DATABASE=wp \
-e MYSQL_ROOT_PASSWORD=training@123 \
mysql:5.7