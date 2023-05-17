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

#### Starting the containers

From a command line, enter the blinky-box-docker directory that you just unzipped and enter:

```shell
docker compose -f blinky-box.yaml up -d
```

On the first run, Docker will have to pull a number of images that will take some time. Once the containers have spun up you can see the Blinky-Lite application and the database application on localhost on the ports specified in the .env file.

#### Adding MQTT Passwords
The script `add-mqtt-pw.sh` can be used for adding  mqtt credentials. The usage is:

```shell
./add-mqtt-pw.sh <username> <password>
```

This script will restart the MQTT container to load the new credentials.

To remove passwords, edit the `pwfile` in the `mqtt-auth` folder and then restart the mqtt container with the `restart-mqtt.sh` script.  To restart the MQTT container, go to a command line in the `blinky-box-docker` directory and enter:

```shell
./restart-mqtt-pw.sh
```

#### Adding MQTT Access Control List (ACL) Rules

In the `mqtt-auth` folder, edit the `aclfile` file. There are examples already in place. After editing the file, restart the mqtt container with the `restart-mqtt.sh` script as descirbed above.


## Customization
Blinky-Lite is fully customize-able. The home page of a Blinky-Lite box is a static web page the and is defined in the `index.html` file and the `homepage` folder inside the `blinky-box-docker` directory. 

Icons used in the Blinky-Lite applications can also be customized in the `blinky-lite-icons` folder inside the `blinky-box-docker` directory. 

Most of the Blinky-Lite Box [services](/pages/Overview/features.html#services) are customized by editing the database. This can easily be done with the Mongo-Express server that was installed in the Docker Compose file that can be accessed at [http://localhost:xxxxx](http://localhost:8080) where xxxxx is defined by the `EXPRESSPORT` environmental variable. The username for the Mongo-Express server is **admin** and the password is defined by the `BLINKYLITE_PASSWORD` environmental variable. 

## Accessing the Application Server
The home page for the Application Server is at [http://localhost:yyyyy](http://localhost:60427) where yyyyy is defined by the `BLINKYPORT` environmental variable. You can access the application index page at [http://localhost:yyyyy/myapps](http://localhost:60427/myapps). The Docker image comes loaded with an example user **aeinstein** with a password **e=mcsquared**. You should delete this example user after you have deployed the application server.

----
[MongoDB]:https://www.mongodb.com/atlas/database  
[MQTT]:https://mqtt.org  
[Docker container]:https://hub.docker.com/r/blinkylite/blinky-lite-box  
[Docker Engine]:https://docs.docker.com/engine/install  
[Docker Desktop]:https://www.docker.com/products/docker-desktop/  
[docker compose file]:https://github.com/Blinky-Lite/docker-templates/raw/master/blinky-box-docker.zip  
[Vonnage]:https://www.vonage.com/communications-apis/sms/  
[^1]:Blinky-Lite uses Nexmo or [Vonnage] for SMS alerts. It you do not have an SMS account with Vonnage, then leave the Nexmo variables alone.    