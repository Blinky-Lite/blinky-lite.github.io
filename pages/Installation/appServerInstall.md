---
title: Application Server
layout: default
parent: Installation
nav_order: 1

---
# Application Server

<div style="position: relative; padding-bottom: 56.25%;height: 0px;">
    <iframe style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" frameborder="0" allowfullscreen="" src="https://player.vimeo.com/video/906812514?dnt=1"></iframe>
</div>

This tutorial will show you how to install Blinky-Lite on a [Ubuntu Server](https://ubuntu.com/download/server) that is installed on amd64 or x86_64. The server should have at least 2048MB of memory and 20GB of disk space.

## Installing Portainer
Blinky-Lite is composed of a number of Docker containers. We use a web based tool called [Portainer](https://www.portainer.io/) to install and orchestrate the containers. From a terminal on your application server, retrieve the Blinky-Lite Portainer installation script

<code>wget https://raw.githubusercontent.com/Blinky-Lite/blinky-compose/main/scripts/installDockerPortainer.sh</code>

Give the script execution privileges

<code>chmod +x installDockerPortainer.sh</code>

Run the script and supply a password for administering the Portainer web app. The password must be at least 12 characters long. 

<code>./installDockerPortainer.sh <i>doNotUseThisPassword</i></code>

The script will take a while to execute and give a message

<i>...Finished installing docker..serving Portainer on port 9000</i>

when complete.

## Download blinky-compose 
Now open a browser that is on the same network as the Ubuntu server. 
- Navigate to the [blinky-compose repository](https://github.com/Blinky-Lite/blinky-compose ). 
- Click the green Code button and select the Download zip option at the bottom of the dialog window. 
- After the zip file has been downloaded, go to your download folder and extract the zip file. 

## Configure the blinky-Lite stack
Return to your web browser and in the address bar enter the IP address of your Ubuntu server followed by a :9000 to navigate to the Portainer web app.
- The username for Portainer is admin and the password is what you entered during the installation script. 
- Click on the "Get Started" button and then click on the Docker icon to reach the Docker dashboard. 
- From the Docker dashboard click on the "stacks" button. 
- Press the blue "Add Stack" button and enter the name for your Blinky-Lite stack. 
- It is recommended to use blinky-lite as the stack name. 
- Click on the upload option and then under the upload section, press the Select file button. 
- Navigate to your download directory and open the blinky-compose-main directory that you extracted. 
- Select the blinky-lite.yaml file. 
- Next, select the "Load variables from env file" button and navigate to the download directory. 
- Navigate to the env directory and select the blinky-lite.env file. 
### Configure the Blinky-Lite env variables
Fill in the environmental variables into the table as shown. 

* `DOCKER_TAG` - Enter `amd64` for now. More choices in the future
* `BLINKYLITE_PASSWORD` - same password as you used for the portainer app
* `BOX` - name of your blinky-lite box eg. my-blinky-box-01
* `REMOTE_MQTTSERVER` - Enter `none`. Since this is an introductory tutorial we will not use an external MQTT broker as a bridge
* `REMOTE_MQTTUSER` - Enter `none`
* `REMOTE_MQTTPASSWORD` - Enter `none`
* `HUB` - Enter `blinky-hub`
* `EXTRA_HUB_TOPIC1` - Enter `none`
* `JWTKEYSECRET` - Used to encrypt communications between the client web apps and the server.
* `MAXDBSIZE` - The maximum size of the database in bytes. 4500000000 is a good size to start.
* `TWOFA` - The two factor authentication flag.  

## Starting the blinky-lite stack
At the bottom of the stack configuration web page, press the blue deploy the stack button. It will take some time to deploy the stack because all the necessary docker containers need to be imported.  Once the stack has been deployed, you will see blinky-lite show up on the stacks list.  

Blinky-Lite will be served on port 80 of the Ubuntu server. Because blinky-lite implements an nginx reverse proxy server, you can also reach the Portainer web application by entering portainer after the server ip address. 

## Viewing the Blinky-Lite database
You can also edit the blinky-lite database by entering mongo-express after the server ip address. The user name for mongo-express is admin and the password is the same as the blinky-lite password you set when configuring the stack. You should only touch the blinky-lite database. 

The blinky-lite database contains a number of mongo-db collections. For example, you can change user credentials and permissions in users collections.  You can set the color scheme of all the applications by adjusting the general app document. You can also adjust the look of the initial landing page. 

