---
title: App Authentication
layout: default
parent: App Overview
grand_parent: Overview
nav_order: 9
has_children: false
---
# App Authentication
For security, all Blinky-Lite applications require user authentication. User credentials are stored in the application database. The credentials can be configured to be either a name-password pair or a name-one time password pair with two factor authentication. It is highly recommended to use the two factor authentication method. Blinky-Lite two factor authentication works well with any onetime password app such as Google Authenticator or Authy. Blinky-Lite insures that all web applications are served over an SSL connection. Once authenticated, Blinky-Lite checks all client requests with [JSON Web Tokens (JWT)](https://jwt.io/).
## OTP Login
![]({{ site.urlimg }}login1.png)  
## Credential page for OTP setup
![]({{ site.urlimg }}login2.png)
## QR-Code for OTP setup with authentication app.
![]({{ site.urlimg }}login4.png)

