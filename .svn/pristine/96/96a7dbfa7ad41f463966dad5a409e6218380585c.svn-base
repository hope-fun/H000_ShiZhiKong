//
//  DownloadResponse.m
//  iPhoneHTTPServer
//
//  Created by hoperun ccas on 13-3-15.
//
//

#import "DownloadResponse.h"
#import "HTTPConnection.h"
#import <unistd.h>
#import <fcntl.h>
#import "HTTPLogging.h"

#if ! __has_feature(objc_arc)
#warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

// Log levels : off, error, warn, info, verbose
// Other flags: trace
static const int httpLogLevel = HTTP_LOG_LEVEL_WARN; // | HTTP_LOG_FLAG_TRACE;

#define NULL_FD  -1
@implementation DownloadResponse

- (id)initWithFilePath:(NSString *)fpath forConnection:(HTTPConnection *)parent
{
	if((self = [super init]))
	{
        //		HTTPLogTrace();
		
		connection = parent; // Parents retain children, children do NOT retain parents
		
		fileFD = NULL_FD;
		filePath = @"http://localhost:80/111.png";
		if (filePath == nil)
		{
			HTTPLogWarn(@"%@: Init failed - Nil filePath", THIS_FILE);
			
			return nil;
		}else{
            NSURL *url = [NSURL URLWithString:filePath];
            NSData *imageData = [NSData dataWithContentsOfURL:url];
            if(imageData != nil)
            {
                NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
                NSString *documentString = [paths objectAtIndex:0];
                NSFileManager *fileManager = [NSFileManager defaultManager];
                NSLog(@"documentString is%@",documentString);
                filePath = [NSString stringWithFormat:@"%@/111.png",documentString];
                [fileManager createFileAtPath:filePath contents:imageData attributes:nil];
            }
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



@end
