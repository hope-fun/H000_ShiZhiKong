//
//  DownloadImageResponse.m
//  KPYXProject
//
//  Created by qian_bingzhen on 13-5-2.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "DownloadImageResponse.h"
#import "HTTPConnection.h"
#import <unistd.h>
#import <fcntl.h>
#import "HTTPLogging.h"
#import "GTMHTTPFetcher.h"
#import "AFNetworking.h"
#if ! __has_feature(objc_arc)
#warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif
#define BASEDocument [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];

// Log levels : off, error, warn, info, verbose
// Other flags: trace
static const int httpLogLevel = HTTP_LOG_LEVEL_WARN; // | HTTP_LOG_FLAG_TRACE;

#define NULL_FD  -1
@implementation DownloadImageResponse
- (id)initWithFilePath:(NSString *)fpath forConnection:(HTTPConnection *)parent
{
	if((self = [super init]))
	{
        //		HTTPLogTrace();
		
		connection = parent; // Parents retain children, children do NOT retain parents
		
		fileFD = NULL_FD;
        //		filePath = @"http://localhost:80/111.png";
		filePath = fpath;
		if (filePath == nil)
		{
			HTTPLogWarn(@"%@: Init failed - Nil filePath", THIS_FILE);
			
			return nil;
		}else{
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                NSURL *url = [NSURL URLWithString:filePath];
                NSLog(@"xiazai url is %@",filePath);
                
                NSData *imageData = [NSData dataWithContentsOfURL:url];
                if(imageData != nil)
                {
                    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
                    NSString *documentString = [paths objectAtIndex:0];
                    NSFileManager *fileManager = [NSFileManager defaultManager];
                    NSLog(@"documentString is%@",documentString);
#ifdef KPYX_QAOne
                    NSArray *newArray = [filePath componentsSeparatedByString:@"http://10.20.70.24:8888/kpyx-logical-service"];
                    
#endif
#ifdef KPYX_QATwo
                    
                    NSArray *newArray = [filePath componentsSeparatedByString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service"];
                    
#endif
#ifdef KPYX_QAThree
                    
                    NSArray *newArray = [filePath componentsSeparatedByString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service"];
                    
#endif
                    NSString *neFilePath = [newArray objectAtIndex:1];
                    //                NSString *newFilePath = [NSString stringWithFormat:@"%@/%@",documentString,neFilePath];
                    //                if([[NSFileManager defaultManager] fileExistsAtPath:neFilePath] == NO){
                    //                    [self creatNewFolderWithName:neFilePath];
                    //                }else{
                    //                }
                    
                    
                    
                    NSArray *documentArray = [neFilePath componentsSeparatedByString:@"/"];
                    NSLog(@"%@",documentArray);
                    NSMutableArray *array = [[NSMutableArray alloc] initWithArray:documentArray];
                    [array  removeLastObject];
                    if([[array objectAtIndex:0] isEqualToString:@""])
                    {
                        [array removeObjectAtIndex:0];
                    }
                    NSMutableString *fileString = [[NSMutableString alloc] initWithCapacity:1];
                    for(NSString *string in array){
                        [fileString appendFormat:@"/%@",string];
                        NSString *basePath = BASEDocument;
                        NSString *file = [NSString stringWithFormat:@"%@",basePath];
                        NSString *entryPath = [file stringByAppendingString:[NSString stringWithFormat:@"%@",fileString]];
                        NSLog(@"entryPathentryPathentryPathentryPathentryPath %@",entryPath);
                        if([[NSFileManager defaultManager] fileExistsAtPath:entryPath] == NO){
                            [self creatNewFolderWithName:fileString];
                        }
                    }
                    NSString *basePath = BASEDocument;
                    NSString *imageDir = [NSString stringWithFormat:@"%@/%@", basePath, neFilePath];
                    if([fileManager createFileAtPath:imageDir contents:imageData attributes:nil]){
                        NSLog(@"YES");
                    }else{
                        NSLog(@"NO");
                        
                    }
                }
            });
            
            
            
            
            
            
            
        }
		
		NSDictionary *fileAttributes = [[NSFileManager defaultManager] attributesOfItemAtPath:filePath error:nil];
		if (fileAttributes == nil)
		{
			HTTPLogWarn(@"%@: Init failed - Unable to get file attributes. filePath: %@", THIS_FILE, filePath);
			
			return nil;
		}
		
		fileLength = (UInt64)[[fileAttributes objectForKey:NSFileSize] unsignedLongLongValue];
		fileOffset = 0;
		
		aborted = NO;
		
		// We don't bother opening the file here.
		// If this is a HEAD request we only need to know the fileLength.
	}
	return self;
}


#pragma mark - fileAction
- (BOOL)creatNewFolderWithName:(NSString *)fileName
{
    
    NSString *basePath = BASEDocument;
    NSString *imageDir = [NSString stringWithFormat:@"%@/%@", basePath, fileName];
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager fileExistsAtPath:fileName isDirectory:&isDir];
    if ( !(isDir == YES && existed == YES) )
    {
        NSError *fileError;
        [fileManager createDirectoryAtPath:imageDir withIntermediateDirectories:YES attributes:nil error:&fileError];
        if(fileError != nil){
            return NO;
        }
    }
    return YES;
}
@end
