//
//  DownloadResourceClass.h
//  KPYXProject
//
//  Created by qian_bingzhen on 13-4-25.
//  Copyright (c) 2013年 abing. All rights reserved.
//




#import <Foundation/Foundation.h>
@protocol DownLoadImageDelegate;
@interface DownloadResourceClass : NSObject<NSURLConnectionDelegate>
{
    long long totalLength;
    
}
@property (nonatomic, strong) NSString *urlAsString;
@property (nonatomic, strong) id<DownLoadImageDelegate> delegate;
@property (nonatomic, strong) NSMutableData *connectionData;
@property (nonatomic, strong) NSString *resourceName;

- (void)downloadZip;
- (void)downloadZipWithURL:(NSString *)urlString;

-(void)writeToFile:(NSData *)data fileName:(NSString *) fileName;
@end

@protocol DownLoadImageDelegate
-(void)updateDownProgress:(double) value;

@end