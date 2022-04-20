# ricardo_shisha


services: 
  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    links: 
        - db:db
    ports:
        - 8000:80
    environment:
        MYSQL_USER: user
        MYSQL_PASSWORD: test
        MYSQL_ROOT_PASSWORD: test
  db:
    image: mysql
    ports: 
        - "3306:3306"
    environment:
        MYSQL_DATABASE: myDb
        MYSQL_USER: user
        MYSQL_PASSWORD: test
        MYSQL_ROOT_PASSWORD: test
    volumes:
        - ./dump:/docker-entrypoint-initdb.d
        - persistent:/var/lib/mysql
    networks:
        - default