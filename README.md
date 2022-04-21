This project use the following ports :

| Server     | Port |
|------------|------|
| MySQL      | 3306 |
| PHPMyAdmin | 8000 |
| Nginx      | 8080 |

## Run the application

1. Start the application :

    ```sh
    docker-compose up
    ```

    or in deamon mode to continue using the console

    ```sh
    docker-compose up -d
    ```

2. Open your favorite browser :

    * [http://localhost:8000](http://localhost:8080/)
    * [http://localhost:8080](http://localhost:8000/) PHPMyAdmin (username: user, password: test)