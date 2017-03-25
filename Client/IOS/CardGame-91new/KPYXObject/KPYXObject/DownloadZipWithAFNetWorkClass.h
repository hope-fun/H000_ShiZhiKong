//
//  DownloadZipWithAFNetWorkClass.h
//  KPYXProject
//
//  Created by qian_bingzhen on 13-5-17.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DownLoadImageWithAFDelegate;
@interface DownloadZipWithAFNetWorkClass : NSObject
{
     NSInteger reloadbtyes;
     NSInteger totalbtyes;
    BOOL isResuming;
    NSMutableURLRequest *request;
}
@property (nonatomic, assign)    NSInteger reloadbtyes;
@property (nonatomic, assign)    NSInteger totalbtyes;
@property (nonatomic, strong)   id<DownLoadImageWithAFDelegate> delegate;
@property (nonatomic, strong)   NSMutableURLRequest *request;
- (void)downloadZipWithURL:(NSString *)urlString;
-(void)btnaction;
-(void)pauseDownload;
-(void)resumeDownload;

@end
@protocol DownLoadImageWithAFDelegate
@optional
- (void)downloadSuccessed:(id)sender;
@required
-(void)updateDownProgressWithAF:(double)value withReadByte:(double)readByte andTotalByte:(double)totalByte;
@end

