//
//  DetectVersionManager.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-28.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "DetectVersionManager.h"
#import "DetectVersionResponse.h"
#import "DownLoadZipClass.h"
@implementation DetectVersionManager
- (void)sendDetectVersionRequestWithData:(NSString *)jsonString
{
    
    
    
    
//    NSURL *myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/resources/version.json"];
    NSURL *myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/resources/version.json"];
#ifdef KPYX_QAOne
    myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/resources/version.json"];
#endif
#ifdef KPYX_QATwo
    myURL = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/resources/version.json"];
#endif
    
//#ifdef QAOne
//     myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/resources/version.json"];
//#endif
//#ifdef QATwo
//    myURL = [NSURL URLWithString:@"http://10.20.70.203:9080/kpyx-logical-service/resources/version.json"];
//#endif
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:myURL];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    GTMHTTPFetcher* myFetcher = [GTMHTTPFetcher fetcherWithRequest:request];
    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];

    //    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];
    //    [myFetcher beginFetchWithDelegate:self
    //                       didFinishSelector:@selector(myFetcher:finishedWithData:error:)];
    [myFetcher beginFetchWithCompletionHandler:^(NSData *retrievedData, NSError *error) {
        NSLog(@"%@",retrievedData);
        if (error != nil) {
            NSLog(@"%@",error);
        } else {
            // succeeded
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:retrievedData options:kNilOptions error:&error];
            NSLog(@"%@",json);
            DetectVersionResponse *detectVersionResponse = [[DetectVersionResponse alloc] init];
            detectVersionResponse.version_code = [json objectForKey:@"version_code"];
            detectVersionResponse.version_name = [json objectForKey:@"version_name"];
            detectVersionResponse.package_name = [json objectForKey:@"package_name"];
            detectVersionResponse.updateList = [json objectForKey:@"update_list"];
            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
            int nowVersion = [[user objectForKey:USER_KEY_VERSION_CODE] integerValue];
            
            NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            NSString *documentString = [paths objectAtIndex:0];
            NSLog(@"%@",documentString);
//            if(nowVersion != 0){

            if(([detectVersionResponse.version_code integerValue] > nowVersion) && nowVersion != 0){
                DownLoadZipClass *down = [[DownLoadZipClass alloc] init];
                [down downloadZipWithURL:detectVersionResponse.package_name];
            }else{
            
            }
            
            
            NSLog(@"%@",detectVersionResponse.version_code);
            NSLog(@"%@",detectVersionResponse.version_name);
            NSLog(@"%@",detectVersionResponse.package_name);
            NSLog(@"%@",detectVersionResponse.updateList);

        }
    }];
    
}
@end
