//
//  DownloadResourceClass.m
//  KPYXProject
//
//  Created by qian_bingzhen on 13-4-25.
//  Copyright (c) 2013年 abing. All rights reserved.
//


#import "DownloadResourceClass.h"
#import "GTMHTTPFetcher.h"
#import "zipZapManager.h"
@implementation DownloadResourceClass
{
    dispatch_queue_t upzip;
    NSURLConnection *connection;
    NSString *downloadurlString;
}
@synthesize delegate;
@synthesize connectionData;
@synthesize resourceName;
- (void)downloadZip{
    NSString *basePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	NSString *firstfilePath = [NSString stringWithFormat:@"%@",basePath];
    NSString *fileName = @"resources/updates/splash.zip";
    NSLog(@"The filePath is: %@", firstfilePath);
    
    NSArray *documentArray = [fileName componentsSeparatedByString:@"/"];
    NSMutableArray *docArray = [[NSMutableArray alloc] initWithArray:documentArray];
    [docArray removeLastObject];
    NSLog(@"%@",fileName);
    NSMutableString *fileString = [[NSMutableString alloc] initWithCapacity:1];
    for(NSString *string in docArray){
        [fileString appendFormat:@"/%@",string];
        NSString *entryPath = [firstfilePath stringByAppendingString:[NSString stringWithFormat:@"%@",fileString]];
        NSLog(@"entryPathentryPathentryPathentryPathentryPath %@",entryPath);
        if([[NSFileManager defaultManager] fileExistsAtPath:entryPath] == NO){
            [self creatFolderWithName:fileString];
            
        }
    }
    
    
    NSString *urlAsString = @"http://10.20.70.203:9080/kpyx-logical-service/resources/resources.zip";
    NSURL    *url = [NSURL URLWithString:urlAsString];
    //    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"GET"];
    [request setCachePolicy:NSURLRequestReloadIgnoringCacheData];
    //    NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSMutableData *data = [[NSMutableData alloc] init];
    connectionData = data;
    NSURLConnection *newConnection = [[NSURLConnection alloc]
                                      initWithRequest:request
                                      delegate:self
                                      startImmediately:YES];
    
    
    connection = newConnection;
    
    
    if (connection != nil){
        NSLog(@"Successfully created the connection");
    } else {
        NSLog(@"Could not create the connection");
    }
}

- (void)downloadZipWithURL:(NSString *)urlString
{
    
    downloadurlString = urlString;
    //    NSString *urlAsString = @"https://github.com/square/PonyDebugger/archive/master.zip";
    //
    //    NSURL    *url = [NSURL URLWithString:urlAsString];
    //    resourceName = [[urlAsString componentsSeparatedByString:@"/"] lastObject];
    
    
    NSString *basePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	NSString *firstfilePath = [NSString stringWithFormat:@"%@",basePath];
    NSString *fileName = [[urlString componentsSeparatedByString:@"com/"] objectAtIndex:1];
    NSLog(@"The filePath is: %@", firstfilePath);
    
    NSArray *documentArray = [fileName componentsSeparatedByString:@"/"];
    NSMutableArray *docArray = [[NSMutableArray alloc] initWithArray:documentArray];
    [docArray removeLastObject];
    NSLog(@"%@",fileName);
    NSMutableString *fileString = [[NSMutableString alloc] initWithCapacity:1];
    for(NSString *string in docArray){
        [fileString appendFormat:@"/%@",string];
        NSString *entryPath = [firstfilePath stringByAppendingString:[NSString stringWithFormat:@"%@",fileString]];
        if([[NSFileManager defaultManager] fileExistsAtPath:entryPath] == NO){
            [self creatFolderWithName:fileString];
            
        }
    }
    
    NSURL    *url = [NSURL URLWithString:urlString];
    resourceName = [[urlString componentsSeparatedByString:@"/"] lastObject];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSMutableData *data = [[NSMutableData alloc] init];
    connectionData = data;
    NSURLConnection *newConnection = [[NSURLConnection alloc]
                                      initWithRequest:request
                                      delegate:self
                                      startImmediately:YES];
    connection = newConnection;
    if (connection != nil){
        NSLog(@"Successfully created the connection");
    } else {
        NSLog(@"Could not create the connection");
    }
    [connection start];
    
}

- (void) connection:(NSURLConnection *)connection
   didFailWithError:(NSError *)error{
    NSLog(@"An error happened");
    NSLog(@"%@", error);
    [connectionData setLength:0];
}

- (void) connection:(NSURLConnection *)connection
     didReceiveData:(NSData *)data{
    double progressValue = totalLength ==0?0:((double)([connectionData length])/(double)totalLength);
    [delegate updateDownProgress:progressValue];
    NSLog(@"Received data");
    [connectionData appendData:data];
    
    NSString *fileName = [[downloadurlString componentsSeparatedByString:@"com/"] objectAtIndex:1];
    [self writeToFile:data fileName:fileName];
    
}
- (BOOL)creatFolderWithName:(NSString *)fileName
{
    NSString *basePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *imageDir = [NSString stringWithFormat:@"%@%@", basePath, fileName];
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager fileExistsAtPath:imageDir isDirectory:&isDir];
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

-(void)writeToFile:(NSData *)data fileName:(NSString *) fileName
{
    
    NSString *basePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    //////////
    NSString *filePath=[NSString stringWithFormat:@"%@/%@",basePath,fileName];
    
    
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath] == NO){
        NSLog(@"file not exist,create it...");
        [[NSFileManager defaultManager] createFileAtPath:filePath contents:nil attributes:nil];
    }else {
        NSLog(@"file exist!!!");
    }
    
    FILE *file = fopen([filePath UTF8String], [@"ab+" UTF8String]);
    
    if(file != NULL){
        fseek(file, 0, SEEK_END);
    }
    int readSize = [data length];
    fwrite((const void *)[data bytes], readSize, 1, file);
    fclose(file);
    
}

- (void) connectionDidFinishLoading :(NSURLConnection *)connection{
    // 下载的数据
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentString = [paths objectAtIndex:0];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSLog(@"documentString is%@",documentString);
    
    NSString *pathString = [NSString stringWithFormat:@"%@/resources/updates/%@",documentString,resourceName];
    BOOL creatSuccess = [fileManager createFileAtPath:pathString contents:connectionData attributes:nil];
    if(creatSuccess){
        upzip = dispatch_queue_create("com.zip",  NULL);
        dispatch_async(upzip, ^{
            
            NSString *zipString = pathString;
            
            [zipZapManager unzipWithPath:zipString ToPath:@"resources/updates"];
            
        });
        NSLog(@"保存成功.");
    }else{
        NSLog(@"保存失败.");
    }
}

- (void) connection:(NSURLConnection *)connection
 didReceiveResponse:(NSURLResponse *)response{
    [connectionData setLength:0];
    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
    if (httpResponse && [httpResponse respondsToSelector:@selector(allHeaderFields)]) {
        NSDictionary *httpResponseHeaderFields = [httpResponse allHeaderFields];
        totalLength = [[httpResponseHeaderFields objectForKey:@"Content-Length"] longLongValue];
        NSLog(@"totalLength is %lld",totalLength);
    }
    
}

@end

