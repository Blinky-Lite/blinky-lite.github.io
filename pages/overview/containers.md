---
title: Containers
layout: default
parent: Architecture
grand_parent: Overview
nav_order: 1

---
# Overview - Architecture - Containers
The Blinky-Lite architecture is based on Linux containers. A Linux container is a set of one or more processes that are isolated from the rest of the system. All the files necessary to run them are provided from a distinct image, meaning Linux containers are portable and consistent. Because of their popularity and ease of use, Linux containers make Blinky-Lite very extendable. Containers are also an important part of IT security. For example, all the Linux containers in Blinky-Lite communicate on an isolated container network. 

Blinky-Lite Linux containers are managed by Portainer which itself is a linux container with an easy-to-use web interface. The core containers of Blinky-Lite are the application server, the database for storing data and application configuration, and the notification server for alarm handling.

![]({{ site.urlimg }}BlinkyLiteOverviewImages/portainer.png)  
<span style="color:#fdc100">Portainer container in Blinky-Lite</span>

![]({{ site.urlimg }}BlinkyLiteOverviewImages/appServer.png)  
<span style="color:#fdc100">Application server container in Blinky-Lite</span>

![]({{ site.urlimg }}BlinkyLiteOverviewImages/database.png)  
<span style="color:#fdc100">Mongo-DB Database container in Blinky-Lite</span>

![]({{ site.urlimg }}BlinkyLiteOverviewImages/ntfyDocker.png)  
<span style="color:#fdc100">Notification container in Blinky-Lite.</span>
