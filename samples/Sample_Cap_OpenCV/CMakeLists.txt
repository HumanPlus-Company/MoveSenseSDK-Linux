cmake_minimum_required(VERSION 2.8)

project( Sample_Cap_OpenCV )

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake-modules)

find_package( OpenCV REQUIRED )
if( OpenCV_FOUND )
list( APPEND ThirdParty_LIBS ${OpenCV_LIBS} )
    include_directories( ${OpenCV_INCLUDE_DIRS} )
endif( OpenCV_FOUND )
INCLUDE_DIRECTORIES( ${OPENCV_INCLUDE_DIR} )

# movesense
find_package(MOVESENSE REQUIRED)
INCLUDE_DIRECTORIES(${MOVESENSE_INCLUDE_DIR})

add_executable(Sample_Cap_OpenCV Sample_Cap_OpenCV.cpp)
target_link_libraries( Sample_Cap_OpenCV ${MOVESENSE_LIBRARY} ${OpenCV_LIBS} )



