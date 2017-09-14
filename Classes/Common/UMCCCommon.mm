#include "UMCCCommon.h"
#include <UMCommon/UMConfigure.h>
#include "MobClickCpp.h"


#define VERSION "1.0"
#define WRAP_TYPE "cocos2dx"

static  NSString* getNSStringFromCString(const char* cstr){
    if (cstr) {
        return [NSString stringWithUTF8String:cstr];
    }
    return nil;
}
void UMCCCommon::setLogEnabled(bool value){
    BOOL valTmp = value?YES:NO;
    [UMConfigure setLogEnabled:valTmp];
}
void UMCCCommon::init(const char *appkey, const char *channel){
    MOBCLICKCPP_START_WITH_APPKEY_AND_CHANNEL(appkey, channel)
    [UMConfigure initWithAppkey:getNSStringFromCString(appkey) channel:getNSStringFromCString(channel)];
}
    
