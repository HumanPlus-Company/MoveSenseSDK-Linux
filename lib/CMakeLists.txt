# set cmake required vesin
cmake_minimum_required(VERSION 2.8)

# set project name
project(movesense)

# set lib output path
SET(LIBRARY_OUTPUT_PATH ${movesense_SOURCE_DIR}/lib)	

# set include dir
INCLUDE_DIRECTORIES("${movesense_SOURCE_DIR}/include")

# set include file
SET(LIB_INCLUDES include/CameraMode.h include/MoveSenseCamera.h include/MoveSenseErrorCode.h)

# set source file
SET(LIB_SRCS src/Camera.cpp src/CameraCtrl.cpp src/CtrlInf.cpp src/MoveSenseCamera.cpp src/VL4IF.cpp)

# build shared lib libxxx.so
ADD_LIBRARY(${PROJECT_NAME} SHARED ${LIB_SRCS})

# build static lib libxxx_static.a
ADD_LIBRARY(${PROJECT_NAME}_static STATIC ${LIB_SRCS})

# rename static lib name
SET_TARGET_PROPERTIES (${PROJECT_NAME}_static PROPERTIES OUTPUT_NAME ${PROJECT_NAME})
GET_TARGET_PROPERTY (OUTPUT_VALUE ${PROJECT_NAME}_static OUTPUT_NAME)
 
# avoid to clear libxxx.so when build libxxx.a	
SET_TARGET_PROPERTIES (${PROJECT_NAME}_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)
SET_TARGET_PROPERTIES (${PROJECT_NAME} PROPERTIES CLEAN_DIRECT_OUTPUT 1)
 
# Specified the version of shared lib and API 	
SET_TARGET_PROPERTIES (${PROJECT_NAME} PROPERTIES VERSION 1.0.0 SOVERSION 1)
 
# install lib to <prefix>/lib, include files to <prefix>/include/PROJECT_NAME dir
INSTALL (TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_static LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
INSTALL (FILES ${LIB_INCLUDES} DESTINATION include/movesense)

