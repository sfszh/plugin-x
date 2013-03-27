#ifndef __pluginx_chinatelecom_online_h__
#define __pluginx_chinatelecom_online_h__

#include "jsapi.h"
#include "jsfriendapi.h"


extern JSClass  *jsb_IAPChinaTelecomOL_class;
extern JSObject *jsb_IAPChinaTelecomOL_prototype;

JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_constructor(JSContext *cx, uint32_t argc, jsval *vp);
void js_pluginx_chinatelecom_online_IAPChinaTelecomOL_finalize(JSContext *cx, JSObject *obj);
void js_register_pluginx_chinatelecom_online_IAPChinaTelecomOL(JSContext *cx, JSObject *global);
void register_all_pluginx_chinatelecom_online(JSContext* cx, JSObject* obj);
JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_getPluginName(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_getPluginVersion(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_init(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_initDeveloperInfo(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_payForProduct(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_getSDKVersion(JSContext *cx, uint32_t argc, jsval *vp);
JSBool js_pluginx_chinatelecom_online_IAPChinaTelecomOL_setDebugMode(JSContext *cx, uint32_t argc, jsval *vp);
#endif

