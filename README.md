# Dockerized MariaDB Server

Remote access server for students to carry out MySQL lab assignments

Stand Up and Pre-Populate Student Users and example Chinook Database tables

### Implemented: 

***ITEC 315*** - Data and Information Management


<br/>

### Requirements:

docker, docker-compose 

### Uses:

mariadb:latest

alpine:latest, mysql-client, bash

<br/>

### Prepare:

Substitute real password for *PASSWORD* in docker-compose.yml and populate-compose.yml

Add users.txt with the format:

```
user1db user1 pass1
user2db user2 pass2
...
```


### To Run:

`docker-compose up -d`

then

`./build.sh`
