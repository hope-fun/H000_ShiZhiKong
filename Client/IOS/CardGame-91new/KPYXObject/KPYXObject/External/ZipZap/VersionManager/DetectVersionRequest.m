//
//  DetectVersionRequest.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-29.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "DetectVersionRequest.h"

@implementation DetectVersionRequest
@synthesize versionCode;
@synthesize jsonString;
- (NSString *)pieceJson
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObject:versionCode forKey:@"version_code"];
    if ([NSJSONSerialization isValidJSONObject:dictionary])
    {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
        jsonString =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        NSLog(@"json data:%@",jsonString);
    }
    return jsonString;
}
@end
