##This is a test program with source code for movesense in linux platform .

1. before you build your source code, please make sure you have installed the following libaries.
  (1) libusb  ( in ubuntu :**$ sudo apt-get install libusb-1.0-0-dev** )
  (2) libusb-dev( in ubuntu :**$ sudo apt-get install libusb-dev**) 
  (3) libudev-dev( in ubuntu :**$ sudo apt-get install libudev-dev**)
  (4) v4l-dev (in ubuntu :**$ sudo apt-get install libv4l-dev**)

  you can also install these libaries in one time use the following cmd in ubuntu:
		$ sudo apt-get install libusb-1.0-0-dev libusb-dev libudev-dev libv4l-dev

2. complie the samples source code
  before you build samples source code, please make sure you have finished step 1.
  
		$ cd lib
		$ chmod +x build.sh
		$ ./build.sh

  if build.sh isn't work well, you can use the fellowing methods
  (1) use cmake&make:
		$ mkdir build
		$ cd build
		$ cmake -DCMAKE_INSTALL_PREFIX=/usr/local .. 
		$ make
		$ sudo make install
  (2) use g++ cmd
    **build shared lib**
		$ g++ ./src/*.cpp -I./include -I/usr/local/include -L/usr/local/lib -shared -fPIC -o ./lib/libmovesense.so -ludev
	**build static lib**
		$ g++ -c ./src/*.cpp -I./include -I/usr/local/include -L/usr/local/lib -ludev
		$ ar crv ./lib/libmovesense.a *.o
		$ rm -rf *.o
		$ sudo cp include/CameraMode.h include/MoveSenseCamera.h include/MoveSenseErrorCode.h /usr/local/include/movesense
		$ sudo cp ./lib/libmovesense.a ./lib/libmovesense.so /usr/local/lib
		$ cd /usr/local/include/movesense
		$ sudo chmod +rw CameraMode.h MoveSenseCamera.h MoveSenseErrorCode.h

3. clean the lib and include file
    if you don't need movesense libaries anymore, you can run clean.sh to remove these files.

		$ ./clean.sh
