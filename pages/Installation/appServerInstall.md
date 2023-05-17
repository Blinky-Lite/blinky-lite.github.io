---
title: Application Server
layout: default
parent: Installation
nav_order: 1

---
# Application Server

The Application Server (or Blinky-Lite Box) requires [MongoDB] and [MQTT] as services which can be difficult to install so we have bundled the Blinky-Lite Box in a [Docker container]. Then we have developed Docker Compose yaml files for retrieving and starting the Blinky-Lite Box with all the required services. The [Docker Engine] is easily installed on Linux systems. For operating systems other than Linux you will need to use [Docker Desktop].

### Usage

Download zipped  blinky-lite-box [docker compose file] template. The file will unzip into a directory. Enter the directory and edit the .env file with settings of your choosing. 

----
[MongoDB]:https://www.mongodb.com/atlas/database  
[MQTT]:https://mqtt.org  
[Docker container]:https://hub.docker.com/r/blinkylite/blinky-lite-box  
[Docker Engine]:https://docs.docker.com/engine/install  
[Docker Desktop]:https://www.docker.com/products/docker-desktop/  
[docker compose file]:https://github.com/Blinky-Lite/docker-templates/raw/master/blinky-box-docker.zip  
