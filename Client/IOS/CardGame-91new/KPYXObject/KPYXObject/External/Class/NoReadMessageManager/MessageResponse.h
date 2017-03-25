//
//  MessageResponse.h
//  KPYXProject
//
//  Created by hoperun ccas on 13-4-23.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageResponse : NSObject
@property (nonatomic, strong) NSString *playerId;
@property (nonatomic, assign) BOOL isNew;
@property (nonatomic, strong) NSNumber *unreadMessageCount;
@property (nonatomic, strong) NSNumber *actionCount;
@property (nonatomic, strong) NSNumber *fightCount;
@property (nonatomic, strong) NSNumber *shieldeCount;
@property (nonatomic, strong) NSNumber *vipLevel;
@property (nonatomic, strong) NSNumber *level;
@property (nonatomic, strong) NSNumber *expPercent;
@property (nonatomic, strong) NSNumber *crystalNum;
@property (nonatomic, strong) NSNumber *DiamondsNum;
@property (nonatomic, strong) NSNumber *actionEnergyMax;
@property (nonatomic, strong) NSNumber *fightingEnergyMax;
@property (nonatomic, strong) NSNumber *shieldEnergyMax;
@property (nonatomic, strong) NSNumber *propertiesResume;

@property (nonatomic, strong) NSString *worldNews;
@end
