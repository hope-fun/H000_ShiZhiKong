//
//  RegisterResponse.h
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-29.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegisterResponse : NSObject
@property (nonatomic, strong) NSString *playerId;
@property (nonatomic, strong) NSString *imei;
@property (nonatomic, assign) BOOL isNew;
@property (nonatomic, strong) NSNumber *unreadMessageCount;
@end
