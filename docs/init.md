# Pinit : Init

![Icon](../icon.png)

## Table Of Contents

- [Pinit : Init](#pinit--init)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Normal Boot : Micro SD Card Boot](#normal-boot--micro-sd-card-boot)
  - [Advanced Boot : SSD Boot](#advanced-boot--ssd-boot)
  - [Network Config (Ubuntu Server ONLY)](#network-config-ubuntu-server-only)
  - [First launch](#first-launch)
  - [Next](#next)

## Description

To init a Raspberry Pi, we have to install the base of the system we want on the main storage device of our Raspberry Pi (SD Card or SSD). To do this we use the official [Raspberry Pi OS Tools (Imager)](https://www.raspberrypi.org/software/). (you can also use community image not available with this software)

## Normal Boot : Micro SD Card Boot

We just need to write our system on this micro SD Card :

- Open **Raspberry Pi Imager**
- For **Raspbian 64 Bits System** :
  - Write Raspberry Pi OS (Other) > Raspberry Pi OS Lite (**64-bit**) (Lite Version for Server System) on the Micro SD Card
  - In the Partition **BOOT** create an empty file named : **ssh** (for ssh activation by default)
- For **Ubuntu Server 64 Bits System** :
  - Write Other general purpose OS > Ubuntu > Ubuntu Server 22.04.1 LTS (**64-bit**) on the Micro SD Card

## Advanced Boot : SSD Boot

First we need to update Boot Firmware :

- Open **Raspberry Pi Imager**
- Write Misc utility images > Bootloader > USB Boot on the Micro SD Card
- Insert the Micro SD Card into the Raspberry Pi and wait 1 minutes with end by LED blink or the green screen, then the update is complete

Next we can write our system on SSD :

- Open **Raspberry Pi Imager**
- For **Raspbian 64 Bits System** :
  - Write Raspberry Pi OS (Other) > Raspberry Pi OS Lite (**64-bit**) (Lite Version for Server System) on the SSD connected by USB
  - In the Partition **BOOT** create an empty file named : **ssh** (for ssh activation by default)
- For **Ubuntu Server 64 Bits System** :
  - Write Other general purpose OS > Ubuntu > Ubuntu Server 22.04.1 LTS (**64-bit**) on the SSD connected by USB

## Network Config (Ubuntu Server ONLY)

You have a lot of documentation for wifi management [Here](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#3-wifi-or-ethernet).

For Ethernet Static IP, you have to open and edit the file **network-config** in **system-boot** partition :

Then replace this :

    ethernets:
      eth0:
        dhcp4: true
        optional: true

By this :

    eth0:
      addresses:
        - 192.168.X.X/24
      gateway4: 192.168.1.254
      nameservers:
        addresses: [192.168.1.254, 8.8.8.8, 1.1.1.1]
      optional: true

## First launch

You can now use your Micro SD Card or USB SSD for launch your Raspberry Pi, insert the Micro SD Card into the Raspberry Pi for Micro SD Card Boot or the USB 3.0 into the Raspberry Pi USB 3.0 port for SSD Boot (the Micro SD Card isn't needed anymore for SSD Boot)

## Next

Now you have to [install and configure](./configure.md) your system.
