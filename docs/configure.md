# Pinit : Install and Configure

![Icon](../icon.png)

## Table Of Contents

- [Pinit : Install and Configure](#pinit--install-and-configure)
  - [Table Of Contents](#table-of-contents)
  - [Startup and Connect](#startup-and-connect)
  - [Setup New User](#setup-new-user)
  - [Network Config (Raspbian ONLY)](#network-config-raspbian-only)
  - [Install Softwares and Services](#install-softwares-and-services)
  - [Next](#next)

## Startup and Connect

First of all, connect your Raspberry Pi to an Ethernet Cable and Power and start it, after few minutes, you can try to find it on your network :

To find the Raspberry pi IP address, you can try to ping **raspberrypi.local** (for Raspbian) or **arp -na | grep -i "b8:27:eb"** or **arp -na | grep -i "dc:a6:32"** or **arp -na | grep -i "e4:5f:01"** (for Ubuntu Server).

```bash
# First Connect (Raspbian ONLY)
ssh pi@192.168.X.X
Password = raspberry

# First Connect (Ubuntu Server ONLY)
ssh ubuntu@192.168.X.X
Password = ubuntu
# You have to change it at the first connection

# With new Account
ssh USER@192.168.X.X
Password = You have defined it
```

## Setup New User

```bash
sudo apt-get update
sudo apt-get install -y sudo vim nano

# Create User
sudo /usr/sbin/useradd -m USER

# Setup Right (Raspbian ONLY)
sudo /usr/sbin/usermod -aG adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,netdev,gpio,i2c,spi USER

# Setup Right (Ubuntu Server ONLY)
sudo /usr/sbin/usermod -aG adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev,lxd USER
sudo /usr/sbin/usermod -s /bin/bash USER

# Change Password
sudo passwd USER

# Change Current User
sudo su - USER

# Check SSH connect before delete Pi User !

# Kill Pi User (Raspbian ONLY)
sudo pkill -u pi
# Delete Pi User (Raspbian ONLY)
sudo deluser -remove-home pi

# Check SSH connect before delete Ubuntu User !

# Kill Pi User (Ubuntu Server ONLY)
sudo pkill -u ubuntu
# Delete Pi User (Ubuntu Server ONLY)
sudo deluser -remove-home ubuntu
```

## Network Config (Raspbian ONLY)

```bash
ip a
sudo vim /etc/dhcpcd.conf

interface eth0
static ip_address=192.168.X.X/24
static routers=192.168.1.254
static domain_name_servers=192.168.1.254 8.8.8.8 1.1.1.1

sudo reboot

ssh piXXX@192.168.X.X
```

## Install Softwares and Services

Now you can install some software and services :

1) Install [Basics Softwares](https://proginfra.gitlab.io/servinit/#/docs/softwares)
2) Install [Docker](https://progdevlab.gitlab.io/dyntools/#/docs/docker/install)
3) Configure [SSH Server](https://progdevlab.gitlab.io/dyntools/#/docs/linux/ssh)
4) You can use this [documentation](https://progdevlab.gitlab.io/dyntools/#/?id=tools) too if you want

## Next

Now with this server, you can deploy some Docker container to get a lot of services on your server and use it for everything you want.
