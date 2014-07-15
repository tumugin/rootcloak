LOCAL_PATH := $(call my-dir) 

include $(CLEAR_VARS)
LOCAL_MODULE := substrate
LOCAL_SRC_FILES := $(LOCAL_PATH)/../JniLibs/$(TARGET_ARCH_ABI)/libsubstrate.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := substrate-dvm
LOCAL_SRC_FILES := $(LOCAL_PATH)/../JniLibs/$(TARGET_ARCH_ABI)/libsubstrate-dvm.so
include $(PREBUILT_SHARED_LIBRARY)
 
include $(CLEAR_VARS)  
LOCAL_LDLIBS := -llog  -l $(LOCAL_PATH)/../JniLibs/$(TARGET_ARCH_ABI)/libsubstrate.so -l $(LOCAL_PATH)/../JniLibs/$(TARGET_ARCH_ABI)/libsubstrate-dvm.so
LOCAL_SHARED_LIBARIES := substrate substrate-dvm
LOCAL_MODULE    := rootcloakplus.cy
LOCAL_SRC_FILES := rootcloakplus.cy.cpp 
LOCAL_CPPFLAGS := -fpermissive
include $(BUILD_SHARED_LIBRARY) 