# Vanilla-Symfony
Simple docker cluster with Symfony using PHP-FPM, Nginx and MariaDB

## Usage
Run `docker compose up` to bring up the containers (note on older systems the command `docker-compose up` may be needed instead). The first run will take a little longer and build two containers. It will also install Symfony 7 into the app directory. Note that on some operating systems these files will be owned by root and so may need to have their ownership changed to allow editing. This can be done for example by the command `chown -R <user>:<group> app`.
The database container 'db' will create a docker volume to allow database contents to persist. By default it just contains the default MariaDB files and a single empty 'testdb' database. Credentials for access to this database are saved in the .env file.
Once the containers are up the web app can be accessed at `http://<localhost or ip>:8080`.
