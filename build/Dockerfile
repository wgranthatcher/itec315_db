FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add --no-cache mariadb-client
RUN apk add --no-cache bash 

#COPY build.sh /
#COPY users.txt /
#COPY insert.sh /
COPY . /

RUN chmod +x /build.sh /insert.sh

WORKDIR /
#RUN ./build.sh 

#RUN rm -rf build.sh users.txt insert.sh

ENTRYPOINT ["bash", "/build.sh"]
#ENTRYPOINT ["/bin/sh"]
