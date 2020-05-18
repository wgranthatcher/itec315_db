# Dockerized MariaDB Server for ITEC 315 - Data and Information Management

Remote access server for students to carry out MySQL lab assignments

<br/>

## Stand Up and Pre-Populate Student Users and example Chinook Database tables

<br/>

### Requirements:

Docker

Docker-compose

<br/>

### To Run

Substitute real password for *PASSWORD* in docker-compose.yml and populate-compose.yml

Add users.txt with the format:
```
userdb user pass
```

then

`docker-compose up -d`

then

`./build.sh`
