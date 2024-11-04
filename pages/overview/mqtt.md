---
title: Communication Protocol
layout: default
parent: Architecture
grand_parent: Overview
nav_order: 2

---
# Overview - Architecture - Communication Protocol
To communicate with internal devices, Blinky-Lite uses an MQTT container. MQTT is a  publish-subscribe communication protocol developed by IBM for the monitoring of  oil pipelines running through the desert, but is now a very popular IoT communication protocol. A key security feature of MQTT is that every device initiates authentication to the communication broker, and the publish-subscribe topics for each device are linked to a unique device authentication. This is much different than most other control system protocols in which communication to the device is initiated externally, which can compromise security. Also, In traditional systems, devices can be overwhelmed by too many requests for data. However, MQTT provides inherent data pooling. That is, devices only publish data when they are ready, regardless of how many requests from users.

![]({{ site.urlimg }}BlinkyLiteOverviewImages/architecture.png)  
<span style="color:#ff6100">Blinky-Lite Architecture</span>
