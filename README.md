# OV7670 Video Streaming on ZedBoard via VDMA
Display ov7670 camera video on VGA monitors through Video DMA on ZedBoard.


## Architecture Overview
![ov7670_vdma_vga_arch](https://user-images.githubusercontent.com/8836707/27060571-7505a75c-4fa3-11e7-8957-1d80cd0b5a1e.png)

As shown in the figure above, the project uses two seperated VDMAs to move video data from OV7670 and to VGA monitors as the basic structure, which will be introduced in the first version. Other versions will be improved on this one.

## Usage
This project is tested by using a ZedBoard with a 18-pin OV7670. The pin assigments can be found within the xdc file. Vivado 2015.4 is used and tested successfully under Ubuntu 14.04.

### Clone the project from github
This project contains recursive repos `ip_repo`; therefore parameter `--recursive` is used to clone all repositories. But not all of these IPs are used.

``
git clone --recursive https://github.com/dhytxz/ov7670_VDMA_VGA.git
``

### Build the project
Scripts in this project can help to create both vivado and xsdk projects as well as the `BOOT.bin` file under the project/boot folder.

``
./build.sh <Project Name> <Version>
``

There are three workable versions: `v1`, `v2` and `v3`. The differences are listed below:

|    | Descriptions                                                                                                                                                                                                                                                                                     |
|:--:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| v1 | As the figure shown, the system has two separate  VDMAs , namely s2mm, and mm2s. Both of them work on a single frame buffer in DDR                                                                                                                                                               |
| v2 | This version has the same dataflow with the first version. But the dedicated camera controller `ov7670_controller` is removed; while the camera configurations are done within ARM through a I2C port. The configuration is different from v1, and the image is a little bit sharper than that of v1.                |
| v3 | This version has a different VDMA structure from the first two. Two separated VDMAs are combined to one with two channels that are gen-locked with each other. Both two channels go through the three frame buffers under the dynamic mode. The camera configuration is the same with version 2. |

## Thanks!
This project is inspired by and improved from  [Mike's project](http://hamsterworks.co.nz/mediawiki/index.php/Zedboard_OV7670), [UToronto's project](http://www.eecg.toronto.edu/~pc/courses/432/2015/projects/1_paintwithlight/community/), [todotani](https://github.com/todotani/OV7670_ZYNQ), and [Lauri's blog](https://lauri.võsandi.com/hdl/zynq/xilinx-video-capture.html).