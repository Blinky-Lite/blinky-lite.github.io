---
title: Alarm Scanner App
layout: default
parent: App Overview
grand_parent: Overview
nav_order: 4
has_children: false
---
# Alarm Scanner
The alarm scanner app displays a list of cubes that are outside the alarm block limits. Only trays that the user has access are shown for an given user. The user can also change the cube setting if the user has setting permissions. In addition, the user can also edit the alarm block of an individual cube.

The alarm block has fields to notify the user via SMS, however the Blinky-Lite system must be connected to a SMS system which can be expensive to operate. As of 2024, Blinky-Lite now incorporates a [publish-subscribe architecture](notifySystem.html) which makes it ideal for notifying groups of users.

<p align = "center"><img src = "{{ site.urlimg }}alarmScanner1.png"></p>
<p align = "center">Sample Alarm Scanner</p>

<p align = "center"><img src = "{{ site.urlimg }}alarmScanner2.png"></p>
<p align = "center">Sample Alarm Scanner config Dialog</p>



