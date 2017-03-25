//
//  UCIDManager.h
//  KPYXProject
//
//  Created by daiwei on 13-6-20.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTMHTTPFetcher.h"
#import "UserDefaultKey.h"
#import "UCIDResponse.h"
@interface UCIDManager : NSObject
- (void)sendUCIDRequestWithData:(NSString *)jsonString;

@end
