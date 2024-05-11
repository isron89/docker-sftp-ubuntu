# docker-sftp-ubuntu
Docker environtment for ssh/sftp two container peer to peer base Linux Ubuntu

## How to run:
- build image as 'docker-ubuntu-sftp'
```
docker build -t docker-ubuntu-sftp .
```
- run docker-compose on docker-compose.yml
```
docker-compose up -d
```
- check two container connections (see IP network on docker container inspect)
- send file via sftp (username@ip-container:/folder-destination)
```
scp /home/sftp/wallpaper.png sftp@172.xxx.xx.x:/home/sftp
```
  
<br>Thanks to all [reference](https://github.com/)
