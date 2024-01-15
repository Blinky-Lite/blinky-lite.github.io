---
title: Notification System
layout: default
parent: App Overview
grand_parent: Overview
nav_order: 11
has_children: false
---
# Notification System
All control platforms should have a system for notifying users when a device parameter is out of tolerance. The Blinky-Lite [Alarm scanner App](alarmScannerAppPreview.html) is a display for parameters not in tolerance but is only useful if a user is looking at the application. The alarm block has fields to notify the user via SMS, however the Blinky-Lite system must be connected to a SMS system which can be expensive to operate. As of 2024, Blinky-Lite now incorporates [ntfy](https://ntfy.sh/) which an open source notification platform. The platform uses a publish-subscribe architecture which makes it ideal for notifying groups of users. The subscription topics follow the pattern:

<i>tray_type</i>-<i>tray_name</i>-<i>cube_name</i>

The platform can be accessed via Android, Iphone, web browser or REST api making it easy for the user to subscribe amd receive notifications. The Blinky-Lite notification service is installed as a set of Docker containers with a [Docker compose file](https://github.com/Blinky-Lite/blinky-compose/blob/main/blinky-ntfy-alarm-service.yaml). The resulting docker container **blinky-ntfy** must be exposed to an external https web URL.

![]({{ site.urlimg }}ntfy.png)  

