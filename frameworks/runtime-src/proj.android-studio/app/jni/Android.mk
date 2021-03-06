LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libweibosdkcore
LOCAL_SRC_FILES := prebuild/armeabi/libweibosdkcore.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libweibosdkcorev8
LOCAL_SRC_FILES := prebuild/arm64-v8a/libweibosdkcore.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libweibosdkcorev7
LOCAL_SRC_FILES := prebuild/armeabi-v7a/libweibosdkcore.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libweibosdkcoremips
LOCAL_SRC_FILES := prebuild/mips/libweibosdkcore.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libweibosdkcoremips64
LOCAL_SRC_FILES := prebuild/mips64/libweibosdkcore.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libweibosdkcorex86
LOCAL_SRC_FILES := prebuild/x86/libweibosdkcore.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libweibosdkcorex64
LOCAL_SRC_FILES := prebuild/x86_64/libweibosdkcore.so
include $(PREBUILT_SHARED_LIBRARY)


LOCAL_MODULE := cocos2dlua_shared

LOCAL_MODULE_FILENAME := libcocos2dlua

LOCAL_SRC_FILES := hellolua/main.cpp \
                    ../../../Classes/AppDelegate.cpp \
                    ../../../Classes/analytics/lua_binding.cpp \
                    ../../../Classes/analytics/MobClickCpp.cpp \
                    ../../../Classes/push/CCUMPushSDK.cpp \
                    ../../../Classes/push/lua_push_binding.cpp \
                    ../../../Classes/share/lua_share_binding.cpp \
                    ../../../Classes/share/CCUMSocialSDK.cpp \
                    ../../../Classes/Common/UMCCCommon.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes \
                    $(LOCAL_PATH)/../../../Classes/analytics \
                    $(LOCAL_PATH)/../../../Classes/push \
                    $(LOCAL_PATH)/../../../Classes/share \
                    $(LOCAL_PATH)/../../../Classes/Common

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_STATIC_LIBRARIES := cocos2d_lua_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/lua-bindings/proj.android)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
