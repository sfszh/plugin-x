LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := game_shared

LOCAL_MODULE_FILENAME := libgame

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../../../jsbindings/auto/pluginx.cpp \
                   ../../../../jsbindings/manual/jsb_pluginx_basic_conversions.cpp 
#                   ../../Classes/HelloWorldScene.cpp \
#                   ../../Classes/MyPurchase.cpp
                   
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
                    $(LOCAL_PATH)/../../../../jsbindings/auto \
                    $(LOCAL_PATH)/../../../../jsbindings/manual 

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static \
        PluginAlipayStatic \
        PluginChinaMobileStatic \
        PluginChinaTelecomStatic \
        PluginChinaUnicomStatic \
        PluginPunchboxStatic \
        PluginNd91Static \
        PluginProtocolStatic

LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += spidermonkey_static
LOCAL_WHOLE_STATIC_LIBRARIES += scriptingcore-spidermonkey

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx) \
$(call import-module,CocosDenshion/android)
$(call import-module,external/chipmunk)
$(call import-module,scripting/javascript/spidermonkey-android)
$(call import-module,scripting/javascript/bindings)
$(call import-module,alipay/android) \
$(call import-module,chinamobile/android) \
$(call import-module,chinatelecom/android) \
$(call import-module,chinaunicom/android) \
$(call import-module,punchbox/android) \
$(call import-module,nd91/android) \
$(call import-module,protocols/android)
