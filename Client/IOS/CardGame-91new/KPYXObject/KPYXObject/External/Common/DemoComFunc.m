//
//  DemoComFunc.m
//  NdCP_Game_Demo
//
//  Created by  hiyo on 12-6-19.
//  Copyright 2012 Nd. All rights reserved.
//

#import "DemoComFunc.h"
#import <NdComPlatform/NDComPlatform.h>

@implementation DemoComFunc

+ (BOOL)isIpadProject
{
	return [[[UIDevice currentDevice] model] hasPrefix:@"iPad"] && (UIUserInterfaceIdiomPad == [UIDevice currentDevice].userInterfaceIdiom);
}

+ (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)ori
{
	return UIInterfaceOrientationIsLandscape(ori);
}

+ (void)messageBox:(NSString*)stringTip
{
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:stringTip
													message:nil
												   delegate:nil
										  cancelButtonTitle:nil
										  otherButtonTitles:@"确定", nil];
	[alert show];
	[alert release];	
}

+ (BOOL)showMessageBoxIfNotLogin
{
	if (![[NdComPlatform defaultPlatform] isLogined]) {
		[DemoComFunc messageBox:@"请先登录"];
		return YES;
	}
	else {
		return NO;
 	}
}

#define AUTO_ROTATION  @"AUTO_ROTATION"
+ (BOOL)is91SDKAutoRotateMode
{
	NSNumber* num = [[NSUserDefaults standardUserDefaults] objectForKey:AUTO_ROTATION];
	return (num ? [num boolValue] : YES);
}

+ (void)save91SDKAutoRotateMode:(BOOL)autoRotate
{
	NSNumber* num = [NSNumber numberWithBool:autoRotate];
	[[NSUserDefaults standardUserDefaults] setObject:num forKey:AUTO_ROTATION];
	[[NSUserDefaults standardUserDefaults] synchronize];
}

#define  ORIENTATION_KEY	@"cmplfmOrientation"
+ (UIInterfaceOrientation)orientationFor91SDK
{
    return UIInterfaceOrientationPortrait;
    
	NSNumber* num = [[NSUserDefaults standardUserDefaults] objectForKey:ORIENTATION_KEY];
	return (num ? (UIInterfaceOrientation)[num intValue] : UIInterfaceOrientationPortrait);
}

+ (void)saveOrientationFor91SDK:(UIInterfaceOrientation)ori
{
	switch (ori) {
		case	UIInterfaceOrientationPortrait:
		case	UIInterfaceOrientationPortraitUpsideDown:	
		case	UIInterfaceOrientationLandscapeLeft:
		case	UIInterfaceOrientationLandscapeRight:
			break;
		default:
			ori = UIInterfaceOrientationPortrait;
			break;
	}
	
	NSNumber* num = [NSNumber numberWithInt:ori];
	[[NSUserDefaults standardUserDefaults] setObject:num forKey:ORIENTATION_KEY];
	[[NSUserDefaults standardUserDefaults] synchronize];
}


#pragma mark -
#define  DEMO_APP_ID	@"appId"
#define  DEMO_APP_KEY	@"appKey"
+ (NSArray*)arrayAppInfosFromFile;
{
	NSString* str = [[NSBundle mainBundle] pathForResource:@"customedAppProperty" ofType:@"plist"];
	NSArray* arr = [NSArray arrayWithContentsOfFile:str];
	if ([arr count] <= 0) {
		NSDictionary* dic = [NSDictionary dictionaryWithObjectsAndKeys:
							 @"100010",  DEMO_APP_ID,
							 @"C28454605B9312157C2F76F27A9BCA2349434E546A6E9C75", DEMO_APP_KEY,
							 nil];
		arr = [NSArray arrayWithObject:dic];
	}
	return arr;
}

+ (BOOL)fetchAppIdAndAppKeyFromArrayAppInfos:(NSArray*)arr  withRowIndex:(NSUInteger)row 
								   destAppId:(NSMutableString*)strAppId  destAppKey:(NSMutableString*)strAppKey
{
	if (row >= [arr count]) {
		return NO;
	}
	NSDictionary* dic = [arr objectAtIndex:row];
	[strAppId setString:[dic objectForKey:DEMO_APP_ID]];
	[strAppKey setString:[dic objectForKey:DEMO_APP_KEY]];
	return YES;
}


+ (NSDictionary*)dictionaryAppInfoForDemo
{
	NSString* strAppId = [[NSUserDefaults standardUserDefaults] objectForKey:DEMO_APP_ID];
	NSString* strAppKey = [[NSUserDefaults standardUserDefaults] objectForKey:DEMO_APP_KEY];
	NSDictionary* dicCurrentAppInfo = nil;
	if (nil == strAppId || nil == strAppKey) {
		NSArray* arrInfo = [self arrayAppInfosFromFile];
		if ([arrInfo count] > 0) {
			dicCurrentAppInfo = [arrInfo objectAtIndex:0];
		}
		
		strAppId = [dicCurrentAppInfo objectForKey:DEMO_APP_ID];
		strAppKey = [dicCurrentAppInfo objectForKey:DEMO_APP_KEY];
		[self saveAppInfoForDemoWithAppId:strAppId appKey:strAppKey];
	}
	else {
		dicCurrentAppInfo = [NSDictionary dictionaryWithObjectsAndKeys:
							 strAppId,  DEMO_APP_ID,
							 strAppKey, DEMO_APP_KEY,
							 nil];
	}
	return dicCurrentAppInfo;
}

+ (NSString*)appIdForDemo
{
	NSString* strAppId = [[NSUserDefaults standardUserDefaults] objectForKey:DEMO_APP_ID];
	return strAppId ? strAppId : [[self dictionaryAppInfoForDemo] objectForKey:DEMO_APP_ID];
}

+ (NSString*)appKeyForDemo
{
	NSString* strAppKey = [[NSUserDefaults standardUserDefaults] objectForKey:DEMO_APP_KEY];
	return strAppKey ? strAppKey : [[self dictionaryAppInfoForDemo] objectForKey:DEMO_APP_KEY];
}

+ (void)saveAppInfoForDemoWithAppId:(NSString*)strAppId  appKey:(NSString*)strAppKey
{
	if ([strAppId length] > 0 && [strAppKey length] > 0) {
		[[NSUserDefaults standardUserDefaults] setObject:strAppId forKey:DEMO_APP_ID];
		[[NSUserDefaults standardUserDefaults] setObject:strAppKey forKey:DEMO_APP_KEY];
		[[NSUserDefaults standardUserDefaults] synchronize];
	}
}

@end
