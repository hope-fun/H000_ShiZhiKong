//
//  DownloadImageResponse.h
//  KPYXProject
//
//  Created by qian_bingzhen on 13-5-2.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "HTTPFileResponse.h"
#import "HTTPResponse.h"
#import "HTTPConnection.h"
#import "HTTPFileResponse.h"
@interface DownloadImageResponse : HTTPFileResponse<HTTPResponse>
- (BOOL)creatNewFolderWithName:(NSString *)fileName;
@end
