//
//  DemoComFunc.h
//  NdCP_Game_Demo
//
//  Created by  hiyo on 12-6-19.
//  Copyright 2012 Nd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "customMsgBox.h"


@interface DemoComFunc : NSObject {

}
+ (BOOL)isIpadProject;
+ (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)ori;

+ (void)messageBox:(NSString*)stringTip;
+ (BOOL)showMessageBoxIfNotLogin;

+ (BOOL)is91SDKAutoRotateMode;
+ (void)save91SDKAutoRotateMode:(BOOL)autoRotate;
+ (UIInterfaceOrientation)orientationFor91SDK;
+ (void)saveOrientationFor91SDK:(UIInterfaceOrientation)ori;

+ (NSArray*)arrayAppInfosFromFile;
+ (BOOL)fetchAppIdAndAppKeyFromArrayAppInfos:(NSArray*)arr  withRowIndex:(NSUInteger)row 
								   destAppId:(NSMutableString*)strAppId  destAppKey:(NSMutableString*)strAppKey;
+ (NSDictionary*)dictionaryAppInfoForDemo;
+ (NSString*)appIdForDemo;
+ (NSString*)appKeyForDemo;
+ (void)saveAppInfoForDemoWithAppId:(NSString*)strAppId  appKey:(NSString*)strAppKey;

@end
