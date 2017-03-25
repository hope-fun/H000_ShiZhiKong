//
//  UCIDManager.m
//  KPYXProject
//
//  Created by daiwei on 13-6-20.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "UCIDManager.h"

@implementation UCIDManager

- (void)sendUCIDRequestWithData:(NSString *)jsonString
{
    NSURL *myURL = [NSURL URLWithString:@"http://sdk.g.uc.cn/ss/"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:myURL];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    GTMHTTPFetcher* myFetcher = [GTMHTTPFetcher fetcherWithRequest:request];
    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]]
    ;
    
    [myFetcher beginFetchWithCompletionHandler:^(NSData *retrievedData, NSError *error) {
        NSLog(@"%@",retrievedData);
        if (error != nil) {
            NSLog(@"%@",error);
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"网络不给力" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        } else {
            // succeeded
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:retrievedData options:kNilOptions error:&error];
            NSLog(@"%@",json);
            UCIDResponse *response = [[UCIDResponse alloc] init];
            response.ucid = [json objectForKey:@"id"];
            NSDictionary *stateDic = [json objectForKey:@"state"];
            UCIDState *parseState = [[UCIDState alloc] init];
            parseState.code = [stateDic objectForKey:@"code"];
            parseState.msg = [stateDic objectForKey:@"msg"];
            response.state = parseState;
            NSDictionary *dataDic = [json objectForKey:@"data"];
            UCIDData *parseData = [[UCIDData alloc] init];
            parseData.ucid = [dataDic objectForKey:@"ucid"];
            
            NSUserDefaults *user =[NSUserDefaults standardUserDefaults];
            NSString *ppUserNameflag = [NSString stringWithFormat:@"UC_%@",parseData.ucid];
            [user setObject:ppUserNameflag forKey:USER_KEY_SOURCE_ID];
            [user synchronize];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"com.ucBack"  object:self userInfo:nil];
            parseData.nickName = [dataDic objectForKey:@"nickName"];
            response.data = parseData;
            NSLog(@"%@",response);
            

            
        }
    }];

}
@end
