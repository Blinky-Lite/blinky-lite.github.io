---
title: Application Server
layout: default
parent: Installation
nav_order: 1

---
# Application Server
The Application Server (or Blinky-Lite Box) requires [MongoDB] and [MQTT] as services which can be difficult to install so we have bundled the Blinky-Lite Box in a [Docker] container. Then we have developed Docker Compose yaml files for retrieving and starting the Blinky-Lite Box with all the required services. The [Docker Engine] is easily installed on Linux systems. For operating systems other than Linux you will need to use [Docker Desktop].

### Usage

Download zipped   The file will unzip into a directory. Enter the directory and edit the .env file with settings of your choosing. 

----
[MQTT]:https://mqtt.org/
[MongoDB]:https://www.mongodb.com/atlas/database
[Docker Desktop]:https://www.docker.com/products/docker-desktop/

