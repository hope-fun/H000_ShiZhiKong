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
#import "DownloadZipWithAFNetWorkClass.h"
#import "DownloadResourceClass.h"

@implementation DetectVersionManager
{
    NSString *zipString;
}
- (void)sendDetectVersionRequestWithData:(NSString *)jsonString
{
    NSURL *myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/resourcespackage/version.json"];
#ifdef KPYX_QAOne
    myURL = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/resourcespackage/version.json"];
#endif
    
#ifdef KPYX_QATwo
    myURL = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/resourcespackage/version.json"];
#endif
#ifdef KPYX_QAThree
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/resourcespackage/version.json"];
#endif
#ifdef KPYX_QAFour
    myURL = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/resourcespackage/version.json"];
#endif
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:myURL];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [self setRequestHeadWithRequest:request];

    
    
    GTMHTTPFetcher* myFetcher = [GTMHTTPFetcher fetcherWithRequest:request];
    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];

    //    [myFetcher setPostData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];
    //    [myFetcher beginFetchWithDelegate:self
    //                       didFinishSelector:@selector(myFetcher:finishedWithData:error:)];
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
            DetectVersionResponse *detectVersionResponse = [[DetectVersionResponse alloc] init];
            detectVersionResponse.version_code = [json objectForKey:@"version_code"];
            detectVersionResponse.version_name = [json objectForKey:@"version_name"];
            detectVersionResponse.package_name = [json objectForKey:@"package_name"];
            detectVersionResponse.updateList = [json objectForKey:@"update_list"];
            
            
            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
            int nowVersion = [[user objectForKey:USER_KEY_VERSION_CODE] integerValue];
            
            [user setValue:detectVersionResponse.version_code forKey:USER_KEY_DOWNLOAD_VERSION_CODE];
            [user setValue:detectVersionResponse.updateList forKey:USER_KEY_VERSION_ARRAY];
            //
//            NSMutableArray *downLoadURLArray = [NSMutableArray arrayWithObjects:@"http://localhost/a.zip",@"http://localhost/resources.zip",@"http://localhost/SDWebImage-master.zip", nil];
//            [user setValue:downLoadURLArray forKey:USER_KEY_VERSION_ARRAY];
            //
            [user synchronize];
            NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            NSString *documentString = [paths objectAtIndex:0];
            NSLog(@"%@",documentString);
            NSLog(@"%d,%d",nowVersion,[detectVersionResponse.version_code integerValue]);
//            if(NO){
            if(([detectVersionResponse.version_code integerValue] > nowVersion)){
            
                zipString = detectVersionResponse.package_name;
                NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObject:zipString forKey:@"newZipURL"];
                [dic setObject:detectVersionResponse.updateList forKey:@"newZipURLArray"];
                
                NSNotificationCenter *defaultNC = [NSNotificationCenter defaultCenter];
                [defaultNC postNotificationName:@"com.NewZip"
                                         object:self userInfo:dic];
            }else{
                NSNotificationCenter *defaultNC = [NSNotificationCenter defaultCenter];
                [defaultNC postNotificationName:@"com.NoZip"
                                         object:self];
            }
            
            
            NSLog(@"%@",detectVersionResponse.version_code);
            NSLog(@"%@",detectVersionResponse.version_name);
            NSLog(@"%@",detectVersionResponse.package_name);
            NSLog(@"%@",detectVersionResponse.updateList);

        }
    }];
    
}


- (void)setRequestHeadWithRequest:(NSMutableURLRequest *)request
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [request addValue:[user objectForKey:USER_KEY_IMEI] forHTTPHeaderField:@"imei"];
    NSLog(@"%@,%@",[user objectForKey:USER_KEY_IMEI],[user objectForKey:USER_KEY_SOURCE_ID]);
    if([user objectForKey:USER_KEY_SOURCE_ID] != nil){
        [request addValue:[user objectForKey:USER_KEY_SOURCE_ID] forHTTPHeaderField:@"source_id"];
    }
    [request addValue:@"ios" forHTTPHeaderField:@"client_type"];
}



@end
