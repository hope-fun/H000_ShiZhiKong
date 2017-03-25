////
////  UCIDRequest.m
////  KPYXProject
////
////  Created by daiwei on 13-6-20.
////  Copyright (c) 2013年 abing. All rights reserved.
////
//
//#import "UCIDRequest.h"
//#import <CommonCrypto/CommonDigest.h>
//
//@implementation UCIDRequest
//@synthesize time;
//@synthesize serviceString;
//@synthesize dataDic;
//@synthesize gameDic;
//@synthesize md5String;
//@synthesize jsonString;
//- (NSString *)pieceJson
//{
//    UCGameSdk *sdk = [UCGameSdk defaultSDK];
//    gameDic = [NSMutableDictionary dictionaryWithObject:[NSNumber numberWithInt:sdk.cpId]  forKey:@"cpId"];
//    [gameDic setObject:[NSNumber numberWithInt:sdk.gameId] forKey:@"gameId"];
//    [gameDic setObject:sdk.channelId forKey:@"channelId"];
//    [gameDic setObject:[NSNumber numberWithInt:sdk.serverId]forKey:@"serverId"];
//    serviceString = @"ucid.user.sidInfo";
//    
//    dataDic = [NSMutableDictionary dictionaryWithObject:sdk.sid forKey:@"sid"];
//    
//    NSDate *nowDate = [NSDate date];
//    time = [NSNumber numberWithLong:[nowDate timeIntervalSince1970]];
//    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObject:time forKey:@"id"];
//    [dictionary setObject:serviceString forKey:@"service"];
//    [dictionary setObject:gameDic forKey:@"game"];
//    [dictionary setObject:dataDic forKey:@"data"];
//    
//    NSString *mdstr = [NSString stringWithFormat:@"%dsid=%@cab8ff6d0a68546243fccb87ee982617",sdk.cpId,sdk.sid];
//    
//    [dictionary setObject:[[self md5ActionWithString:mdstr] lowercaseString] forKey:@"sign"];
//    
//    if ([NSJSONSerialization isValidJSONObject:dictionary])
//    {
//        NSError *error;
//        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
//        jsonString =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//        NSLog(@"json data:%@",jsonString);
//    }
//    return jsonString;
//    
//}
//#pragma mark - MD5
//
//- (NSString *)md5ActionWithString:(NSString *)str
//{
//    const char *cStr = [str UTF8String];
//    unsigned char result[16];
//    CC_MD5( cStr, strlen(cStr), result);
//    return [NSString stringWithFormat:
//            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
//            result[0], result[1], result[2], result[3],
//            result[4], result[5], result[6], result[7],
//            result[8], result[9], result[10], result[11],
//            result[12], result[13], result[14], result[15]
//            ];
//}
//
//
//
//
//@end
