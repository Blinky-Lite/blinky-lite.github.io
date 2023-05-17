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

#### Environment Variables

* `BLINKYLITE_PASSWORD` - password for the MongoDB database
* `JWTKEYSECRET` - key for the JWT security 
* `NEXMOAPIKEY` - Vonnage sms API key[^1]
* `NEXMOAPISECRET` - Vonnage sms API secret[^1]
* `MAXDBSIZE` - Maximum size of the MongoDB database in bytes
* `BLINKYPORT` - IP port of the Blinky-Lite Web application
* `EXPRESSPORT` - IP port of the MongoDB Express Web application
* `MQTTPORT` - IP port of MQTT communications which is usually set to 1883
* `TWOFA` - Two factor authentication flag, 0 for disable, 1 for enable
* `ENABLEARCHIVE` - Enable archiving flag. 0 for disable, 1 for enable


----
[MongoDB]:https://www.mongodb.com/atlas/database  
[MQTT]:https://mqtt.org  
[Docker container]:https://hub.docker.com/r/blinkylite/blinky-lite-box  
[Docker Engine]:https://docs.docker.com/engine/install  
[Docker Desktop]:https://www.docker.com/products/docker-desktop/  
[docker compose file]:https://github.com/Blinky-Lite/docker-templates/raw/master/blinky-box-docker.zip  
[Vonnage]:https://www.vonage.com/communications-apis/sms/  
[^1]:Blinky-Lite uses Nexmo or [Vonnage] for SMS alerts.  

