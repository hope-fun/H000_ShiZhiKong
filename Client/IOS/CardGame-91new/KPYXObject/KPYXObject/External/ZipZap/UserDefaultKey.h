//
//  UserDefaultKey.h
//  KPYXProject
//
//  Created by hoperun ccas on 13-4-2.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <Foundation/Foundation.h>
#define USER_KEY_PLAYER_ID  @"playID"
#define USER_KEY_IMEI @"imei"
#define USER_KEY_UNREAD_COUNT @"unreadMessageCount"
#define USER_KEY_ACTION_COUNT @"actionEnergy"
#define USER_KEY_FIGHT_COUNT @"fightingEnergy"
#define USER_KEY_SHIELD_COUNT @"shieldEnergy"
#define USER_KEY_LEVEL_COUNT @"level"
#define USER_KEY_EXP_COUNT @"expPercent"
#define USER_KEY_VIPLEVEL_COUNT @"vipLevel"
#define USER_KEY_CRYSTAL_COUNT @"crystalNum"
#define USER_KEY_DIAMONDS_COUNT @"diamondsNum"
#define USER_KEY_RESUME_COUNT @"propertiesResume"
#define USER_KEY_ACTIONMAX_COUNT @"actionEnergyMax"
#define USER_KEY_FIGHTMAX_COUNT @"fightingEnergyMax"
#define USER_KEY_SHILEDMAX_COUNT @"shieldEnergyMax"
#define USER_KEY_WORLDNEWS_COUNT @"worldNews"
#define USER_KEY_SUCCESS_COUNT @"success"
#define USER_KEY_ENERGY_COUNT @"energy"
#define USER_KEY_MESSAGE @"message"
#define USER_KEY_DIAMONDSREMAIN @"diamondsRemain"

#define USER_KEY_VERSION_CODE @"version_code"
#define USER_KEY_DOWNLOAD_VERSION_CODE @"download_version_code"
#define USER_KEY_DEVICETOKEN @"deviceToken"

#define USER_KEY_VERSION_ARRAY @"version_array"
#define USER_KEY_VERSION_NAME @"version_name"
#define USER_KEY_SOURCE_ID @"source_id"
#define USER_KEY_BUTTON_MUSIC @"button_music"

#define USER_KEY_MUSIC @"music"

#define PUSH_NOTIFICATION_Number @"notification_number"
#define PUSH_NOTIFICATION_ENERGY_FULL @"energy_full"
#define PUSH_NOTIFICATION_WAR_FAILURE @"war_failure"
#define PUSH_NOTIFICATION_WAR_START @"war_start"
#define PUSH_NOTIFICATION_VIP_WAR_START @"vip_war_start"



#define TIME_BACKGROUND @"background_time"
#define PHONE_SETTING_BRIGHTNESS @"iphone_brightness"

#define FIRST_START @"firstStart"
#define NOVICE_URL_QAOne @"novice_url_QAOne"
#define NOVICE_URL_QATwo @"novice_url_QATwo"



#define RANDOM_IMAGE_URL @"/resources/updates/splash.zip"
#define USER_KEY_ISFIGHT @"isFight"


#define k_Audio_Boss          @"BOSS出现"
#define k_Audio_PVE           @"PVE背景音乐"
#define k_Audio_PVP           @"PVP背景音乐"
#define k_Audio_HeChen        @"合成背景音乐"
#define k_Audio_ShenMi        @"神秘商店"
#define k_Audio_CiShanHui     @"星际慈善会"
#define k_Audio_zhenbasai     @"星际争霸赛2"
#define k_Audio_xingjizhimeng @"星际之门"
#define k_Audio_zhaomu        @"招募佣兵BG"
#define k_Audio_ZHUANSHENG    @"转生背景音效"
#define k_Audio_guoguan       @"过关"
#define k_Audio_zhuyinyue     @"游戏主音乐"
@interface UserDefaultKey : NSObject

@end
