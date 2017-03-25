//
//  SupplementManager.m
//  KPYXProject
//
//  Created by liming lu on 8/20/13.
//  Copyright (c) 2013 abing. All rights reserved.
//

#import "SupplementManager.h"
@implementation SupplementManager
-(void)sendSupplementRequestWithString:(NSString *)jsonString
{
     NSURL *myURL = [NSURL URLWithString:@"http://10.20.70.203:9080/kpyx-logical-service/player/unread_message_count"];
#ifdef KPYX_QAOne
    myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/player/supplementaryEnergy"];
#endif
#ifdef KPYX_QATwo
    myURL = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/player/supplementaryEnergy"];
#endif
#ifdef KPYX_QAThree
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/player/supplementaryEnergy"];
#endif
    
#ifdef KPYX_QAFour
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/player/supplementaryEnergy"];
#endif
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:myURL];
    //    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [self setRequestHeadWithRequest:request];
    
    GTMHTTPFetcher* myFetcher = [GTMHTTPFetcher fetcherWithRequest:request];
//    jsonString = @"";
//    jsonString = @"supplementType=FIGHTINGENERGY";
//    NSDictionary *requestDic = [NSDictionary dictionaryWithObjectsAndKeys:jsonString ,@"supplementType", nil];
//    NSString *requestJsonString = [requestDic JSONRepresentation];
//    NSLog(@"%@",requestJsonString);
    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];
    [myFetcher beginFetchWithCompletionHandler:^(NSData *retrievedData, NSError *error) {
        if (error != nil) {
            NSLog(@"%@",error);
        }else{
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:retrievedData options:kNilOptions error:&error];
            NSLog(@"%@",json);
            SupplementResponse *supplementResponse = [[SupplementResponse alloc] init];
            supplementResponse.success = [[json objectForKey:@"success"] intValue];
            supplementResponse.message = [json objectForKey:@"message"];
            supplementResponse.energy = [json objectForKey:@"energy"];
            supplementResponse.diamondsRemain = [json objectForKey:@"diamondsRemain"];
            if (json != nil) {
                NSUserDefaults *users = [NSUserDefaults standardUserDefaults];
                [users setBool:supplementResponse.success forKey:USER_KEY_SUCCESS_COUNT];
                [users setObject:supplementResponse.message forKey:USER_KEY_MESSAGE];
                [users setObject:supplementResponse.energy forKey:USER_KEY_ENERGY_COUNT];
                [users setObject:supplementResponse.diamondsRemain forKey:USER_KEY_DIAMONDSREMAIN];
                
                [[NSNotificationCenter defaultCenter ] postNotificationName:@"com.energyChange" object:self userInfo:nil];
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
