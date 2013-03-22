#ifndef __pluginx_chinaunicom_online_h__
#define __pluginx_chinaunicom_online_h__

#include "jsapi.h"
#include "jsfriendapi.h"


extern JSClass  *jsb_IAPChinaUnicomOL_class;
extern JSObject *jsb_IAPChinaUnicomOL_prototype;

JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_constructor(JSContext *cx, uint32_t argc, jsval *vp);
void js_pluginx_chinaunicom_online_IAPChinaUnicomOL_finalize(JSContext *cx, JSObject *obj);
void js_register_pluginx_chinaunicom_online_IAPChinaUnicomOL(JSContext *cx, JSObject *global);
void register_all_pluginx_chinaunicom_online(JSContext* cx, JSObject* obj);
JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_getPluginName(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_getPluginVersion(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_init(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_initDeveloperInfo(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_payForProduct(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_getSDKVersion(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinaunicom_online_IAPChinaUnicomOL_setDebugMode(JSContext *cx, uint32_t argc, jsval *vp);
#endif

