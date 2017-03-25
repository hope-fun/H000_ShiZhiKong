//
//  RegisterManager.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-29.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "RegisterManager.h"
#import "RegisterResponse.h"
@implementation RegisterManager
- (void)sendRegisterRequestWithString:(NSString *)jsonString
{
//    NSURL *myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/player/register_ajax"];
    NSURL *myURL;

#ifdef KPYX_QAOne
    myURL = [NSURL URLWithString:@"http://10.20.70.203:9080/kpyx-logical-service/player/register_ajax"];
#endif
#ifdef KPYX_QATwo
    myURL = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/player/register_ajax"];
#endif
#ifdef KPYX_QAThree
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/player/register_ajax"];
#endif
#ifdef KPYX_QAFour
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/player/register_ajax"];
#endif
    
//#ifdef QAOne
//    myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/resources/version.json"];
//#endif
//#ifdef QATwo
//    myURL = [NSURL URLWithString:@"http://10.20.70.203:9080/kpyx-logical-service/resources/version.json"];
//#endif
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:myURL];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [self setRequestHeadWithRequest:request];
    GTMHTTPFetcher* myFetcher = [GTMHTTPFetcher fetcherWithRequest:request];

    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];
    //    [myFetcher beginFetchWithDelegate:self
    //                       didFinishSelector:@selector(myFetcher:finishedWithData:error:)];
    [myFetcher beginFetchWithCompletionHandler:^(NSData *retrievedData, NSError *error) {

        NSLog(@"%@",retrievedData);
        if (error != nil) {
            NSLog(@"%@",error);
        } else {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:retrievedData options:kNilOptions error:&error];
        NSLog(@"%@",json);

        RegisterResponse *registerResponse = [[RegisterResponse alloc] init];
        registerResponse.playerId = [json objectForKey:@"player_id"];
        registerResponse.isNew = [[json objectForKey:@"is_new"] boolValue];
        registerResponse.imei = [json objectForKey:@"imei"];
        registerResponse.unreadMessageCount = [json objectForKey:@"unread_message_count"];
        if(json != nil)
        {
            NSUserDefaults *user =[NSUserDefaults standardUserDefaults];
            [user setObject:registerResponse.playerId forKey:@"playerId"];
            [user setObject:registerResponse.playerId forKey:USER_KEY_PLAYER_ID];
            [user setObject:registerResponse.imei forKey:USER_KEY_IMEI];
            [user setObject:registerResponse.unreadMessageCount forKey:USER_KEY_UNREAD_COUNT];
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
