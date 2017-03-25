//
//  DownloadResponse.h
//  iPhoneHTTPServer
//
//  Created by hoperun ccas on 13-3-15.
//
//

#import <Foundation/Foundation.h>
#import "HTTPResponse.h"
#import "HTTPConnection.h"
#import "HTTPFileResponse.h"
@interface DownloadResponse : HTTPFileResponse <HTTPResponse>
@end
