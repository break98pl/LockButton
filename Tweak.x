#import <UIKit/UIKit.h>

@interface SBMainWorkspace : NSObject
+(id)sharedInstance;
-(void)presentPowerDownTransientOverlay;
@end

%hook SBLockHardwareButtonActions

-(void)performLongPressActions {
	[[objc_getClass("SBMainWorkspace") sharedInstance] presentPowerDownTransientOverlay];
}

%end