echo "Configuring and building Sample_Cap_OpenCV..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
mv Sample_Cap_OpenCV ../

echo "Finished build Sample_Cap_OpenCV"
