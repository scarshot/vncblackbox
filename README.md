**!!! Fluxbox is running in root environment !!!**

Baseimage: ubuntu:latest
You can login with password **vncblackbox**

Environment variables default values:

ENV VNC_PW="vncblackbox"
ENV VNC_RES=1000x700

**Start docker image:**

docker run -dit -p 127.0.0.1:6901:6901 -p 127.0.0.1:5901:5901 --name vncblackbox scar/vncblackbox

**Access via. web browser:**

http://localhost:6901/

**Custom docker image from vncblackbox**

- Add custom fluxbox menu entries: /root/menu

**GitHub repository:**

https://github.com/scarshot/vncblackbox
