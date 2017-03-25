//
//  DownloadZipWithAFNetWorkClass.m
//  KPYXProject
//
//  Created by qian_bingzhen on 13-5-17.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "DownloadZipWithAFNetWorkClass.h"
#import "AFNetworking.h"
#import "zipZapManager.h"
#import "UserDefaultKey.h"
@implementation DownloadZipWithAFNetWorkClass
{
    AFHTTPRequestOperation *operation;
    NSString *filePath;
    double totalLength;
    __block double progressValue;
    dispatch_queue_t afupzip;
    dispatch_queue_t downZip;

    NSMutableData *data;
    unsigned long long offset;
     unsigned long long cunchuoffset;
    


}
@synthesize reloadbtyes;
@synthesize totalbtyes;
@synthesize delegate;
@synthesize request;
- (void)downloadZipWithURL:(NSString *)urlString
{
//    urlString = @"http://localhost/CardGame-iOS423.zip";
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    cunchuoffset += [[user valueForKey:@"oldoffset"] longLongValue];
    
    [user setValue:[NSNumber numberWithLongLong:cunchuoffset] forKey:@"newoffset"];
    [user synchronize];
     NSURL    *url = [NSURL URLWithString:urlString];
//    NSURL    *url = [NSURL URLWithString:urlString];
    request = [NSMutableURLRequest requestWithURL:url];
    operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentString = [paths objectAtIndex:0];
    NSString *resourceName = [[urlString componentsSeparatedByString:@"/"] lastObject];
    filePath = [NSString stringWithFormat:@"%@/%@",documentString,resourceName];
    if(cunchuoffset > 0 )
    {
        data = [NSMutableData dataWithContentsOfFile:filePath];
        [request setValue:[NSString stringWithFormat:@"bytes=%lld-",cunchuoffset] forHTTPHeaderField:@"Range"];

    }
    operation.outputStream=[[NSOutputStream alloc] initToFileAtPath:filePath append:isResuming];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        ;
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        ;
        
    }];
    
    [operation setDownloadProgressBlock:^(NSUInteger bytesRead, long long totalBytesRead, long long totalBytesExpectedToRead) {
        NSLog(@"%d-%lld-%lld",bytesRead,totalBytesRead,totalBytesExpectedToRead);
        //        reloadbtyes =(int)totalBytesRead;
        //        totalbtyes=(int)totalBytesExpectedToRead;
        progressValue = (double)(totalBytesRead+cunchuoffset)/(double)(totalBytesExpectedToRead+cunchuoffset);
        NSLog(@"progressValue   is  %f  and  totalBytesExpectedToRead is %f",progressValue,(double)(totalBytesExpectedToRead+cunchuoffset));
        [delegate updateDownProgressWithAF:progressValue withReadByte:[self dealWithBytes:(double)(totalBytesRead+cunchuoffset)] andTotalByte:[self dealWithBytes:(double)(totalBytesExpectedToRead+cunchuoffset)]];
        
        if ([operation.outputStream propertyForKey:NSStreamFileCurrentOffsetKey]) {
            
            offset = [[operation.outputStream propertyForKey:NSStreamFileCurrentOffsetKey] unsignedLongLongValue];
            
        } else {
            
            offset = [[operation.outputStream propertyForKey:NSStreamDataWrittenToMemoryStreamKey] length];
            
        }
        [user setValue:[NSNumber numberWithLongLong:offset] forKey:@"oldoffset"];
        
        NSLog(@"nimei  offsetoffsetoffsetoffset      %lld",offset);
        if((int)progressValue == 1){
            
            NSData *newData = [NSMutableData dataWithContentsOfFile:filePath];
            if(data == nil){
                data = [[NSMutableData alloc] initWithCapacity:1];
            }
            [data appendData:newData];
            if([data writeToFile:filePath atomically:YES])
            {
            
            }else{
                NSLog(@"error");
            }
            [delegate downloadSuccessed:nil];
            
            
            [[NSNotificationCenter defaultCenter] postNotificationName:@"com.downLoadSuccess" object:nil];
            afupzip = dispatch_queue_create("com.afzip",  NULL);
            
            [user setValue:[NSNumber numberWithLongLong:0] forKey:@"oldoffset"];
            [user setValue:[NSNumber numberWithLongLong:0] forKey:@"newoffset"];
            dispatch_async(afupzip, ^{
                
                NSString *zipString = filePath;
                
                [zipZapManager unzipWithPath:zipString ToPath:@"Images"];
                
            });
            
        }
        
        NSLog(@"Received data");
    }];
    [user synchronize];
}


-(void)btnaction

{
    if(isResuming == NO){
        
        operation.outputStream=[[NSOutputStream alloc] initToFileAtPath:filePath append:isResuming];
        
        [operation start];
        isResuming = YES;
    }else{
        [self resumeDownload];
    }
    
}



//used to pause the download

-(void)pauseDownload{
    [operation pause];
        NSData *newData = [NSMutableData dataWithContentsOfFile:filePath];
        if(data == nil){
            data = [[NSMutableData alloc] initWithCapacity:1];
        }
        [data appendData:newData];
        if([data writeToFile:filePath atomically:YES])
        {}else{
            NSLog(@"error");
        }
}

//used to resume download

-(void)resumeDownload{
    
//    unsigned long long offset = 0;
//    
//    if ([operation.outputStream propertyForKey:NSStreamFileCurrentOffsetKey]) {
//        
//        offset = [[operation.outputStream propertyForKey:NSStreamFileCurrentOffsetKey] unsignedLongLongValue];
//        
//    } else {
//        
//        offset = [[operation.outputStream propertyForKey:NSStreamDataWrittenToMemoryStreamKey] length];
//        
//    }
//    
//    
//    
//    [request setValue:[NSString stringWithFormat:@"bytes=%lld-",offset] forHTTPHeaderField:@"Range"];
    
    isResuming = YES;
    
    operation.outputStream=[[NSOutputStream alloc] initToFileAtPath:filePath append:isResuming];
    
    [operation resume];
    
}

- (double)dealWithBytes:(double)byte
{
    return (byte/1024/1024);
}

@end
