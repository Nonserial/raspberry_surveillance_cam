rpi_intel_surveillancecam
=========================

Intelligent surveillance cam with Raspberry Pi

This document describes how to setup a Raspberry Pi to function as an intelligent surveillance cam.

The difference to other systems is, that it will only establish an Internet-connection when it has detected a motion. The advantage is, obviously, that nobody can open the stream remotely, preventing hackers from violating your privacy (on other systems, theoretically anybody who has access to your password/username can stream your cam) and preventing yourself from getting paranoid (e.g. checking every 15 minutes your stream). 

Here I provide a setup and several scripts, that guarantee the network-connection on the detection of a motion. The cam will take a video and a foto of the detected event and immediately send it to you via email. The advantage is, that you will be immediately informed (and only then), when a motion has been detected. Furthermore you have the video as well as a picture of the detected event in the inbox of your email-account. You can optionally encrypt the files that are being sent. 
You can choose, if you want to store all fotos and videos locally on the SD-Card or any attached hard drive or if they are being deleted after the have been sent via email (default). After the end of every event another script is triggered, that closes the network-connection, preventing any violation of your privacy.

The final setup is as simple as possible: you only have to boot your Raspberry Pi and everything works properly.

The weak spots are a) your Raspberry Pi is disconnected from power and b) your wifi is disconnected from power.

The description how to install everything can be found in the "How_to.txt".
