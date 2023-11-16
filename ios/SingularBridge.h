#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#else
#import “RCTBridgeModule.h”
#import “RCTEventEmitter.h”
#endif

@interface SingularBridge : RCTEventEmitter <RCTBridgeModule>{
}

+(void)startSessionWithLaunchOptions:(NSDictionary*)options;
+(void)startSessionWithUserActivity:(NSUserActivity*)userActivity;

@end
