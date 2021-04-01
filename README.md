# Windows Services Monitor

# License 

MIT License

Copyright (c) 2021 Dhruva Kumar

# Requirements
Windows OS, 
Blat,
Stunnel.

# Description

This monitoring tool is a VB script which is used to monitor windows services that are mentioned. 
When the mentioned service is down the tool gets triggered and sends an email for every 10 minutes.
When the service is back to active state it sends a "resolved mail" and keeps on monitoring in the background.
This toos utilizes very less memory & CPU.

# Installation

This script needs the above requirements mentioned to run and send mail alerts. The requirements are provided already in the package including their readme configuration files.

# Configuration for mail alerts

To Enable the email alerts using blat command tool below are the requirements:

1. since blat does not support ssl connection which plays a key role to send mails using G-email we have to install
   "Stunnel".

================================================================================================================================================
	
Stunnel is a proxy designed to add TLS encryption functionality to existing clients and servers without any changes in the programs' code. Its architecture is optimized for security, portability, and scalability (including load-balancing), making it suitable for large deployments.

Stunnel uses the OpenSSL library for cryptography, so it supports whatever cryptographic algorithms are compiled into the library.

Install the stunnelfrom below link:

https://www.stunnel.org/downloads.html

=================================================================================================================================================

	
2. Stunnel helps to establish a secure conncection between our pc and the gmail server so that we can send emails using blat.

3. edit the config file [stunnel/config/stunnel.conf] and make changes as below in the stunnel as below:


/////////////////////////////////////////////////////////////////

// GLOBAL OPTIONS//

client = yes
output = stunnel-log.txt
debug = 0
taskbar = no

[gmail smtp]
accept = 27
connect = smtp.gmail.com:587
protocol = smtp

/////////////////////////////////////////////////////////////////


4. save the config file and start the stunnel.

5. Now, run the " srvmonitor.vbs " script which is located at " monitoring-tools/WinsrvMonitor/full/".

6. This program runs continuously in the background monitoring the mentioned windows service name.

When the mentioned service stops the program then sends a predefined alert mail. This mail is generated using blat.
These emails are sent to the mentioned email addresses for every 10 minutes untill the service gets back to running state. 
When the service gets back to running state it then sends a resolved mail again silently monitors the services. 
Multiple services can be specified in the script as per the requirement.
