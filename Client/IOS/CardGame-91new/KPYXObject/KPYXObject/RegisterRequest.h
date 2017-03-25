//
//  RegisterRequest.h
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-29.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface RegisterRequest : NSObject
@property (nonatomic, strong) NSString *imei;
@property (nonatomic, assign) BOOL isNew;
@property (nonatomic, strong) NSString *jsonString;
- (NSString *)pieceJson;
@end
