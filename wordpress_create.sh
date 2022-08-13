docker run --name wp \
--net webnet \
-p 18080:80 \
-e WORDPRESS_DB_HOST=db \
-e WORDPRESS_DB_USER=user_wp \
-e WORDPRESS_DB_PASSWORD=training \
-e WORDPRESS_DB_NAME=wp \
-e WORDPRESS_TABLE_PREFIX=wp_ \
-v ~/website/wpdata:/var/www/html \
-itd wordpress:5