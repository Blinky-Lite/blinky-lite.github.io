---
title: Security
layout: default
parent: Architecture
grand_parent: Overview
nav_order: 3

---
# Overview - Architecture - Security
## Role Based Access
As discussed earlier, with Blinky-Lite, the user can only interact with the control system through applications served from the application server. The user accesses the web applications through a reverse proxy server that is configured to permit only appropriate routing requests from the user.

Next in the line of defence is role-based authentication.  In the Blinky-Lite database, roles or permissions are assigned for each user.  These roles limit which applications a user can use, what the user can do in each application, such as read or write, and what data types and data the user can interact with. 

![]({{ site.urlimg }}BlinkyLiteOverviewImages/userRoles.png)  
<span style="color:#fdc100">Role based access database </span>

When a user logs into the control system with two factor authentication, their credentials are matched against those stored in the user database. The user’s roles that are defined in the user database are encrypted  in a Jason web token. This token is then sent back to the user and is stored  as an encrypted cookie in her browser. Each time the user interacts with the application server, she presents the encrypted token, and the server decides whether the request can be granted, based on the user’s allowed roles.

![]({{ site.urlimg }}BlinkyLiteOverviewImages/authFlow.png)  
<span style="color:#fdc100">User authentication flow.</span>

## One way reverse proxy
At this point, Blinky-Lite is perfectly suited for operations inside an internet firewall. However, a remote access control platform is not of much use if it  cannot be securely accessed from outside the user’s facility. For secure remote access, Blinky lite provides a tunnel container that sends traffic through the firewall,  using a virtual private network. Now, Blinky-Lite goes one step further by routing the VPN to an outbound-only, reverse proxy server, located in the cloud, such as Cloudflare zero trust. This reverse proxy server permits only allowed routes to the application server,  and provides the first line of defence against the wild-world of the internet, such as denial-of-service attacks.

![]({{ site.urlimg }}BlinkyLiteOverviewImages/architecture.png)  
<span style="color:#ff6100">Blinky-Lite Architecture</span>


## External MQTT Brokers
Because Blinky-Lite uses MQTT as its device communication protocol, Blinky-Lite can be easily extended to a multi-node distributed control platform, by bridging multiple Blinky-Lite systems to an external MQTT broker. By configuring the topics on the external broker, it is possible to share  only a certain subset of devices between Blinky-Lite systems. This configuration provides an excellent balance between data sharing and compartmentalising. Note, again, that connections to the external broker are initiated from the internal brokers, providing a secure connection.