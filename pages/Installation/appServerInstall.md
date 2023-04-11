---
title: Application Server
layout: default
parent: Installation
nav_order: 1

---
# Application Server
This tutorial describes how to install the application server using Linux. The Application Server runs as a [Node-RED] process. The design process is to develop the Node-RED flows on a local computer and then upload the Node-RED process to a cloud application server such as Heroku. To run Node-RED on your local computer, a supported version (16.x) of [Node.js] must be installed. 

The Application Server will need to communicate with a MongoDB database and an MQTT broker. You can install free versions of MongoDB and the [MQTT] broker on your local computer. Installation of these services will not be covered in this tutorial. However, it is recommended that you subscribe to cloud services for the MongoDB database and MQTT broker. [MongoDB] offers free database instances up to 512MB. This is more than enough for small projects. To view and edit the MongoDB database, it is recommended that you install a viewer such as [Studio3T] which can be downloaded for free.

## Download the Blinky-Lite Application Server
You can download the Blinky-Lite application server from GitHub:

    git clone https://github.com/Blinky-Lite/blinky-box-tutorial.git

## Create the environmental variable file
In the cloned directory, create an environmental variable file **.env** which contains the following variables

    BOX=blinky-box-tutorial
    SUBSCRIBETOPIC=blinky-box-tutorial/+/+/#
    MONGODBIP=mongodb+srv://<user>:<pw>@<clusterID>.mongodb.net/blinky-lite?retryWrites=true&w=majority
    MQTTCLIENTID=blinky-box-tutorial
    MQTTSERVERIP=<mqtt-server-ip>
    MQTTUSERNAME=<mqtt-server-username>
    MQTTPASSWORD=<mqtt-server-password>
    NEXMOAPIKEY=<nexmo-api-key>
    NEXMOAPISECRET=<nexmo-api-secret>
    JWTKEYSECRET=<jwt-secret>
    MAXDBSIZE=450000000
    IPREFWEB=<home-site-ip>
    TWOFA=0
    ENABLEARCHIVE=1
    NODEREDCONFIGSECRET=<node-red-secret>

where <> denotes information you must supply. 
## Install the database
A skeleton Blinky-Lite database is contained in the cloned project. The database is stored as collection of BSON files in the **database-dump** directory. You can easily import this database into your MongoDB cloud instance by using Studio3T
## Customize the Node-RED environment
You can customize the Node-RED environment by editing the settings.js file. Complete documentation can be found on the [Node-RED documentation site]. 

## Install the Node-RED flow
To install the Node-RED flow, from inside the cloned directory enter:

    npm install

## Run the Node-RED flow  
To run the Node-RED flow, from inside the cloned directory enter: 

    ./run-blinky-lite.sh $(pwd)




----
[Node-RED]:https://nodered.org/
[Node.js]:https://nodejs.org/en/download
[MQTT]:https://mqtt.org/
[MongoDB]:https://www.mongodb.com/atlas/database
[Studio3T]: https://studio3t.com/download/
[Node-RED documentation site]:https://nodered.org/docs/user-guide/runtime/settings-file



