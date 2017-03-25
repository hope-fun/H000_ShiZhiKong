//
//  RegisterRequest.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-29.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "RegisterRequest.h"

@implementation RegisterRequest
@synthesize imei;
@synthesize isNew;
@synthesize jsonString;
- (NSString *)pieceJson
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObject:imei forKey:@"imei"];
    [dictionary setValue:[NSNumber numberWithBool:isNew] forKey:@"is_new"];
    if ([NSJSONSerialization isValidJSONObject:dictionary])
    {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
        jsonString =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        NSLog(@"json data:%@",jsonString);
    }
    return jsonString;
    
//    NSURL *url1=[NSURL URLWithString:@"下载地址"];
//    NSMutableURLRequest* request1=[NSMutableURLRequest requestWithURL:url1];
//    [request1 setValue:@"bytes=20000-" forHTTPHeaderField:@"Range"];
//    [request1 setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
//    NSData *returnData1 = [NSURLConnection sendSynchronousRequest:request1 returningResponse:nil error:nil];
//    [self writeToFile:returnData1 fileName:@"SOMEPATH"];
}

-(void)writeToFile:(NSData *)data fileName:(NSString *) fileName
{
    NSString *filePath=[NSString stringWithFormat:@"%@",fileName];
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath] == NO){
        NSLog(@"file not exist,create it...");
        [[NSFileManager defaultManager] createFileAtPath:filePath contents:nil attributes:nil];
    }else {
        NSLog(@"file exist!!!");
    }
    
    FILE *file = fopen([fileName UTF8String], [@"ab+" UTF8String]);
    
    if(file != NULL){
        fseek(file, 0, SEEK_END);
    }
    int readSize = [data length];
    fwrite((const void *)[data bytes], readSize, 1, file);
    fclose(file);
}
@end
