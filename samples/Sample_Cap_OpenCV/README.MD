##This is a test program with source code for movesense in linux platform .

1. before you build your source code, please make sure you have installed the following libaries.

  (1) libusb  ( in ubuntu :**$ sudo apt-get install libusb-1.0-0-dev** )

  (2) libusb-dev( in ubuntu :**$ sudo apt-get install libusb-dev**) 

  (3) libudev-dev( in ubuntu :**$ sudo apt-get install libudev-dev**)

  (4) v4l-dev (in ubuntu :**$ sudo apt-get install libv4l-dev**)

  you can also install these libaries in one time use the following cmd in ubuntu:

		$ sudo apt-get install libusb-1.0-0-dev libusb-dev libudev-dev libv4l-dev

  (5) install opencv 2.4

    http://docs.opencv.org/2.4/doc/tutorials/introduction/linux_install/linux_install.html
	
  (6) build movesense lib

		$ cd lib
		$ chmod +x build.sh
		$ ./build.sh

2. complie the samples source code

  before you build samples source code, please make sure you have finished step 1.

  (1) use camke&make:

		$ cd Sample_Cap_OpenCV
		$ chmod +x build.sh
		$ ./build.sh

3. plug the **usb 2.0** cable to power the device

   plug the **usb 3.0** cable to transfer the captured images and disparity 
   
   run the example:

		$ ./Sample_Cap_OpenCV workingmode
   
   the **workingmode** tell the sensor how to work,you can use the following **keyword** to init the sensor

		{
		CAM_STEREO_752X480_LR_30FPS
		CAM_STEREO_752X480_LD_30FPS
		CAM_STEREO_752X480_LRD_30FPS
		CAM_STEREO_376X240_LR_30FPS
		CAM_STEREO_376X240_LD_30FPS
		CAM_STEREO_376X240_LRD_30FPS
		}

   if you don't enter the workingmode, sensor will run in default mode**CAM_STEREO_752X480_LR_30FPS**.
