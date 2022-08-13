docker run --name web01 \
-p 9090:80 \
-v /webdata:/usr/local/apache2/htdocs/ \
-itd httpd:2.4


docker run -d --name mydb \
-e MYSQL_ROOT_PASSWORD=training -e MYSQL_USER=user01 \
-e MYSQL_PASSWORD=training -e MYSQL_DATABASE=db01 --network \
webnet -v /dbdata:/var/lib/mysql mysql:5.7


docker run -d -p 8080:8080 --name bookmanager --network webnet bookmanager