LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := game_shared

LOCAL_MODULE_FILENAME := libgame

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../../../jsbindings/auto/cocos2dx_other.cpp \
                   ../../../../jsbindings/auto/pluginx_flurry.cpp \
                   ../../../../jsbindings/auto/pluginx_umeng.cpp \
                   ../../../../jsbindings/auto/pluginx_protocols.cpp \
                   ../../../../jsbindings/manual/pluginxUTF8.cpp \
                   ../../../../jsbindings/manual/jsb_pluginx_basic_conversions.cpp \
                   ../../../../jsbindings/manual/jsb_pluginx_manual_iap.cpp \
                   ../../../../jsbindings/manual/jsb_pluginx_extension_registration.cpp \
                   ../../../../jsbindings/manual/jsb_pluginx_spidermonkey_specifics.cpp 
                   
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
                    $(LOCAL_PATH)/../../../../jsbindings \
                    $(LOCAL_PATH)/../../../../jsbindings/auto \
                    $(LOCAL_PATH)/../../../../jsbindings/manual 

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static \
                                PluginFlurryStatic PluginUmengStatic PluginProtocolStatic

LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += spidermonkey_static
LOCAL_WHOLE_STATIC_LIBRARIES += scriptingcore-spidermonkey

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,CocosDenshion/android)
$(call import-module,external/chipmunk)
$(call import-module,scripting/javascript/spidermonkey-android)
$(call import-module,scripting/javascript/bindings)
$(call import-module,flurry/android)
$(call import-module,umeng/android)
$(call import-module,protocols/android)
