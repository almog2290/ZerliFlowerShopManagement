## How to start the project 

Follow these steps to build and run the Docker container, and connect to the MySQL server:

1. Build the Docker image: 
    ```
    docker build --pull --rm -f "mysql" -t mysql_zerli:latest "."
    ```

2. Run the Docker container:
    ```
    docker run -d -p 3307:3306 --name mysql_zerli mysql_zerli:latest
    ```

3. Open an interactive bash shell in the running container:
    ```
    docker exec -it mysql_zerli /bin/bash
    ```

4. Log into the MySQL server running in the container as the root:
    ```
    mysql -u root -p$MYSQL_ROOT_PASSWORD
    ```
   Replace `$MYSQL_ROOT_PASSWORD` with the actual root password.

5. Select the `zerli` database:
    ```
    USE zerli;
    ```

6. Run a SELECT query on the `login` table:
    ```
    SELECT * FROM login;
    ```

7. Show all tables in the current database:
    ```
    SHOW TABLES;
    ```


8. Exit from the MySQL server and the Docker container:
    ```
    exit
    ```

9. Start the `G7_Server.jar`:

    ```
    java -jar G7_Server.jar
    ```

10. In the server, make the connection to the MySQL server:
    ```
    jdbc:mysql://localhost:3307/zerli?serverTimezone=IST
    ```
 Make sure the connection is made. You can check in the database report panel.

11. Start the `G7_client` and connect to the server to start using it.