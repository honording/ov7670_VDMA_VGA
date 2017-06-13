# OV7670 Video Streaming on ZedBoard via VDMA
Display ov7670 camera video on VGA monitors through Video DMA on ZedBoard.


## Architecture Overview
![ov7670_vdma_vga_arch](https://user-images.githubusercontent.com/8836707/27060571-7505a75c-4fa3-11e7-8957-1d80cd0b5a1e.png)

As shown in the figure above, the project uses two seperated VDMAs to move video data from OV7670 and to VGA monitors.

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
./build.sh <Project Name>
``
## Thanks!
This is inspired by and improved from  [Mike's project](http://hamsterworks.co.nz/mediawiki/index.php/Zedboard_OV7670), [UToronto's project](http://www.eecg.toronto.edu/~pc/courses/432/2015/projects/1_paintwithlight/community/), and [Lauri's blog](https://lauri.võsandi.com/hdl/zynq/xilinx-video-capture.html).