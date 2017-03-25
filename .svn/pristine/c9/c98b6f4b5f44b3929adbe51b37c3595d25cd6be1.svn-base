//
//  MessageManager.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-4-23.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "MessageManager.h"

@implementation MessageManager
- (void)sendMessageRequestWithString:(NSString *)jsonString
{
    //    NSURL *myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/player/register_ajax"];
    NSURL *myURL = [NSURL URLWithString:@"http://10.20.70.203:9080/kpyx-logical-service/player/unread_message_count"];
    
    //#ifdef Debug
    //    myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/player/unread_message_count"];
    //
    //#endif
#ifdef KPYX_QAOne
    myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/player/appPlayerInfoInit"];
#endif
#ifdef KPYX_QATwo
    myURL = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/player/appPlayerInfoInit"];
#endif
#ifdef KPYX_QAThree
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/player/appPlayerInfoInit"];
#endif
    
#ifdef KPYX_QAFour
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/player/appPlayerInfoInit"];
#endif
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:myURL];
    //    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [self setRequestHeadWithRequest:request];
    
    GTMHTTPFetcher* myFetcher = [GTMHTTPFetcher fetcherWithRequest:request];
    jsonString = @"";
    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];
    //    [myFetcher beginFetchWithDelegate:self
    //                       didFinishSelector:@selector(myFetcher:finishedWithData:error:)];
    [myFetcher beginFetchWithCompletionHandler:^(NSData *retrievedData, NSError *error) {
        
        NSLog(@"MessageManager  is  %@",retrievedData);
        if (error != nil) {
            NSLog(@"%@",error);
        } else {
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:retrievedData options:kNilOptions error:&error];
            NSLog(@"%@",json);
            
            MessageResponse *registerResponse = [[MessageResponse alloc] init];
            registerResponse.playerId = [json objectForKey:@"player_id"];
            registerResponse.isNew = [[json objectForKey:@"is_new"] boolValue];
            
            NSDictionary *data = [json objectForKey:@"data"];
            NSLog(@"%@",data);
            registerResponse.unreadMessageCount = [data objectForKey:@"unreadmessage"];
            registerResponse.vipLevel = [data objectForKey:@"vipLevel"];
            registerResponse.shieldeCount = [data objectForKey:@"shieldEnergy"];
            registerResponse.actionCount = [data objectForKey:@"actionEnergy"];
            registerResponse.fightCount = [data objectForKey:@"fightingEnergy"];
            registerResponse.crystalNum = [data objectForKey:@"crystalNum"];
            registerResponse.DiamondsNum = [data objectForKey:@"diamondsNum"];
            registerResponse.expPercent = [data objectForKey:@"expPercent"];
            registerResponse.level = [data objectForKey:@"level"];
            registerResponse.worldNews = [data objectForKey:@"worldNews"];
            registerResponse.actionEnergyMax = [data objectForKey:@"actionEnergyMax"];
            registerResponse.fightingEnergyMax = [data objectForKey:@"fightingEnergyMax"];
            registerResponse.shieldEnergyMax = [data objectForKey:@"shieldEnergyMax"];
            registerResponse.propertiesResume = [data objectForKey:@"propertiesResume"];
            NSLog(@"%@",registerResponse.unreadMessageCount);
            NSLog(@"%@",registerResponse.level);
            if(json != nil)
            {
                NSUserDefaults *user =[NSUserDefaults standardUserDefaults];
                [user setObject:registerResponse.playerId forKey:USER_KEY_PLAYER_ID];
                [user setObject:registerResponse.unreadMessageCount forKey:USER_KEY_UNREAD_COUNT];
                [user setObject:registerResponse.actionCount forKey:USER_KEY_ACTION_COUNT];
                [user setObject:registerResponse.fightCount forKey:USER_KEY_FIGHT_COUNT];
                [user setObject:registerResponse.shieldeCount forKey:USER_KEY_SHIELD_COUNT];
                [user setObject:registerResponse.level forKey:USER_KEY_LEVEL_COUNT];
                [user setObject:registerResponse.expPercent forKey:USER_KEY_EXP_COUNT];
                [user setObject:registerResponse.vipLevel forKey:USER_KEY_VIPLEVEL_COUNT];
                [user setObject:registerResponse.crystalNum forKey:USER_KEY_CRYSTAL_COUNT];
                [user setObject:registerResponse.DiamondsNum forKey:USER_KEY_DIAMONDS_COUNT];
                [user setObject:registerResponse.actionEnergyMax forKey:USER_KEY_ACTIONMAX_COUNT];
                [user setObject:registerResponse.fightingEnergyMax forKey:USER_KEY_FIGHTMAX_COUNT];
                [user setObject:registerResponse.shieldEnergyMax forKey:USER_KEY_SHILEDMAX_COUNT];
                [user setObject:registerResponse.propertiesResume forKey:USER_KEY_RESUME_COUNT];
                
                
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.unreadMessageCountChange" object:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.actionEnergyChange"  object:self userInfo:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.fightingEnergyChange"  object:self userInfo:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.shieldEnergyChange"  object:self userInfo:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.levelChange"  object:self userInfo:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.expPercentChange"  object:self userInfo:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.vipLevelChange"  object:self userInfo:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.crystalNumChange"  object:self userInfo:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:@"com.DiamondsNumChange"  object:self userInfo:nil];
                [user synchronize];
                
            }else{
                
            }
        }
    }];
}


- (void)setRequestHeadWithRequest:(NSMutableURLRequest *)request
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [request addValue:[user objectForKey:USER_KEY_IMEI] forHTTPHeaderField:@"imei"];
    if([user objectForKey:USER_KEY_SOURCE_ID] != nil){
        [request addValue:[user objectForKey:USER_KEY_SOURCE_ID] forHTTPHeaderField:@"source_id"];
    }
    [request addValue:@"ios" forHTTPHeaderField:@"client_type"];
}
@end
