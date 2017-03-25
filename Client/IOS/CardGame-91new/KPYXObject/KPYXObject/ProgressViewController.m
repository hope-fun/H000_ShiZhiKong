//
//  ProgressViewController.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-4-18.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "ProgressViewController.h"

#import "StartController.h"
#include <netinet/in.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <sys/types.h>
#include <arpa/inet.h>
#import "DownloadResourceClass.h"
#import "DownloadZipWithAFNetWorkClass.h"
#import <NdComPlatform/NdComPlatform.h>
#import <NdComPlatform/NdComPlatform+ApplicationPromotion.h>
#import <NdComPlatform/NdComPlatformAPIResponse.h>
#import <NdComPlatform/NdCPNotifications.h>
#import <QuartzCore/CALayer.h>
#import "DemoComFunc.h"
#define NICKNAME_TAG	533
#define SWITCH_TAG		534
@interface ProgressViewController ()

@end

@implementation ProgressViewController
{
    NSString *shopPrice;
    NSString *shopName;
    NSString *zipURL;
    BOOL flag ;//判断91平台有没有初始化
    TDGAAccount *account;
    
}
@synthesize progress;
@synthesize label;
@synthesize detailedLabel;
@synthesize arrayImage;
@synthesize backgroundImageView;
@synthesize imageView;
@synthesize down;
@synthesize cancelButton;
@synthesize nowUpdateButton;
@synthesize laterUpdateButton;
@synthesize prepareToDownLoadView;
@synthesize downLoadView;
@synthesize activeView;
@synthesize downLoadURLArray;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(IsiPhone5){
        self = [super initWithNibName:@"ProgressViewControllerForFive" bundle:nibBundleOrNil];
        
    }else{
        self = [super initWithNibName:@"ProgressViewController" bundle:nibBundleOrNil];

    }
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    flag = NO;

    activeView.hidesWhenStopped = YES;
    [activeView startAnimating];
    NSArray *imageArray;
    if(IsiPhone5){
        arrayImage = [[NSMutableArray alloc] initWithCapacity:1];
        NSString *basePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        imageArray = [[NSFileManager defaultManager] subpathsAtPath:[NSString stringWithFormat:@"%@/resources/images/splash/",basePath]];
        NSLog(@"%@",imageArray);
        
    }else{
        arrayImage = [[NSMutableArray alloc] initWithCapacity:1];
        NSString *basePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        imageArray = [[NSFileManager defaultManager] subpathsAtPath:[NSString stringWithFormat:@"%@/resources/images/splash-ip4/",basePath]];
        //imageArray = [[NSFileManager defaultManager] subpathsAtPath:[NSString stringWithFormat:@"%@/images/splash-ip4/",basePath]];
        NSLog(@"%@",imageArray);
    }
    
    
    if(imageArray.count > 0){
        [arrayImage addObjectsFromArray:imageArray];
        [self showRandomImage];
    }else{
    }
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gotoNextViewWithTime:) name:@"com.NoZip" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(newDownload:) name:@"com.NewZip" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gotoNextViewForSometime:) name:@"com.downLoadSuccess" object:nil];
    
    
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(levelCountChange2:) name:@"com.levelChange" object:nil];
    /////////////
    
    [[NdComPlatform defaultPlatform] NdSetScreenOrientation:[DemoComFunc orientationFor91SDK]];
	//设置是否自动旋转
	[[NdComPlatform defaultPlatform] NdSetAutoRotation:[DemoComFunc is91SDKAutoRotateMode]];
	
	[UIApplication sharedApplication].statusBarHidden = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SNSInitResult:) name:(NSString *)kNdCPInitDidFinishNotification object:nil];
//    
//     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SNSLoginResult:) name:(NSString *)kNdCPLoginNotification object:nil];
//    
//    	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SNSleavePlatform:) name:(NSString *)kNdCPLeavePlatformNotification object:nil];
    
}

- (void)newDownload:(NSNotification *)noti
{
    id obj = [noti userInfo];
    [activeView stopAnimating];

    zipURL = [obj objectForKey:@"newZipURL"];
    
    
//    zipURL = @"http://localhost/imagetest.zip";
    
    self.prepareToDownLoadView.hidden = NO;
    backgroundImageView.hidden = NO;
    if([obj objectForKey:@"newZipURLArray"] != nil){
        NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
        downLoadURLArray = [user valueForKey:USER_KEY_VERSION_ARRAY];
//        downLoadURLArray = [NSMutableArray arrayWithArray:[obj objectForKey:@"newZipURLArray"]];
//        downLoadURLArray = [NSMutableArray arrayWithObjects:@"http://localhost/a.zip",@"http://localhost/resources.zip",@"http://localhost/SDWebImage-master.zip", nil];
    }
}

- (void)gotoNextViewWithTime:(id)sender
{
    self.prepareToDownLoadView.hidden = YES;
    self.downLoadView.hidden = YES;
    [self performSelector:@selector(gotoNextView:) withObject:nil afterDelay:4];

}

- (void)gotoNextViewForSometime:(id)sender
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    downLoadURLArray = [NSMutableArray arrayWithArray:[user valueForKey:USER_KEY_VERSION_ARRAY]];;
    if([downLoadURLArray count] > 0){
        down = [[DownloadZipWithAFNetWorkClass alloc] init];
        down.delegate = self;
        [down downloadZipWithURL:[downLoadURLArray lastObject]];
        [down btnaction];
    }else{
        NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
        NSInteger oldVersion = [[user valueForKey:USER_KEY_DOWNLOAD_VERSION_CODE] integerValue];
        [user setValue:[NSNumber numberWithInteger:oldVersion] forKey:USER_KEY_VERSION_CODE];
        [user synchronize];
        [self performSelector:@selector(gotoNextView:) withObject:nil afterDelay:4];
    }
}

- (void)gotoNextView:(id)sender
{
    if (flag) {
    [activeView stopAnimating];
        //设定平台为横屏或者竖屏
        [[NdComPlatform defaultPlatform] NdSetScreenOrientation:[DemoComFunc orientationFor91SDK]];
        //设置是否自动旋转
        [[NdComPlatform defaultPlatform] NdSetAutoRotation:[DemoComFunc is91SDKAutoRotateMode]];
        
//        [[NdComPlatform defaultPlatform] NdLogin:0];
    StartController *shopView = [[StartController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:shopView animated:NO completion:^{

    }];
    }else{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"平台初始化失败" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
        
    }
}

- (void)SNSInitResult:(NSNotification *)notify
{

    flag = YES;

}

//- (void)showStartView
//{
//    [activeView stopAnimating];
//    
//    
//    StartController *shopView = [[StartController alloc] init];
//    [self presentViewController:shopView animated:YES completion:^{
//        
//    }];
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - download

-(void)updateDownProgressWithAF:(double)value withReadByte:(double)readByte andTotalByte:(double)totalByte
{
    detailedLabel.text = [NSString stringWithFormat:@"资源下载进度:  %.1fMB / %.1fMB",readByte,totalByte];
    progress.progress = value;
    label.text = [NSString stringWithFormat:@"%.0f%%",value*100];
    
}

- (void)downloadSuccessed:(id)sender
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    downLoadURLArray = [NSMutableArray arrayWithArray:[user valueForKey:USER_KEY_VERSION_ARRAY]];;
    NSLog(@"count = %d",[downLoadURLArray count]);

    if([downLoadURLArray count] == 0)
    {
        NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
        NSInteger oldVersion = [[user valueForKey:USER_KEY_DOWNLOAD_VERSION_CODE] integerValue];
        [user setValue:[NSNumber numberWithInteger:oldVersion] forKey:USER_KEY_VERSION_CODE];
        [user synchronize];
    }else{
        [downLoadURLArray removeLastObject];
        [user setValue:downLoadURLArray forKey:USER_KEY_VERSION_ARRAY];
        [user synchronize];
    }

}


#pragma mark - UIAction
- (IBAction)cancelButtonAction:(id)sender
{
    if (flag) {
    [down pauseDownload];
        //设定平台为横屏或者竖屏
        [[NdComPlatform defaultPlatform] NdSetScreenOrientation:[DemoComFunc orientationFor91SDK]];
        //设置是否自动旋转
        [[NdComPlatform defaultPlatform] NdSetAutoRotation:[DemoComFunc is91SDKAutoRotateMode]];
        
//        [[NdComPlatform defaultPlatform] NdLogin:0];
    StartController *shopView = [[StartController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:shopView animated:NO completion:^{

    }];
    }else{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"平台初始化失败" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }

}

- (IBAction)nowUpdateButtonAction:(id)sender
{
    self.prepareToDownLoadView.hidden = YES;
    self.downLoadView.hidden = NO;
    backgroundImageView.hidden = NO;

    down = [[DownloadZipWithAFNetWorkClass alloc] init];
    down.delegate = self;
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    downLoadURLArray = [NSMutableArray arrayWithArray:[user valueForKey:USER_KEY_VERSION_ARRAY]];
    
    
    if([downLoadURLArray count] == 0)
    {
        
    }else{
        [down downloadZipWithURL:[downLoadURLArray lastObject]];
        [down btnaction];
    }
    
}

- (IBAction)laterUpdateButtonAction:(id)sender
{
    [self cancelButtonAction:nil];
}


- (void)showRandomImage
{
    NSDate *date = [NSDate date];
    NSInteger randomNumber = [date timeIntervalSince1970];
    NSInteger imageNumber = [arrayImage count];
    NSLog(@"randomNumber is  %d",randomNumber%imageNumber);
    NSString *basePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    if(IsiPhone5){
        imageView.image = [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"%@/resources/images/splash/%@",basePath,[arrayImage objectAtIndex:randomNumber%imageNumber]]];
    }else{
        imageView.image = [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"%@/resources/images/splash-ip4/%@",basePath,[arrayImage objectAtIndex:randomNumber%imageNumber]]];
    }
    NSLog(@"random  image is %@",[arrayImage objectAtIndex:randomNumber%imageNumber]);

}



#pragma mark - UIAlertDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView.tag == 40) {
        if(buttonIndex == 1){

            down = [[DownloadZipWithAFNetWorkClass alloc] init];
            down.delegate = self;
            [down downloadZipWithURL:zipURL];
            [down btnaction];
        }else{
            [self cancelButtonAction:nil];
            
        }
    }
}


//- (void)SNSleavePlatform:(NSNotification *)notify
//{
//    int loginState = [[NdComPlatform defaultPlatform] getCurrentLoginState];
//    if (loginState == ND_LOGIN_STATE_NOT_LOGIN) {
//		[self goNextView];
//	}else if(loginState == ND_LOGIN_STATE_NORMAL_LOGIN){
//        if (iszhuxiao == 1) {
//             iszhuxiao = 0;
//            [self goNextView];
//           
//        }
////        [self goNextView];
//    }
//}
////登录
//- (void)SNSLoginResult:(NSNotification *)notify
//{
//	NSDictionary *dict = [notify userInfo];
//	BOOL success = [[dict objectForKey:@"result"] boolValue];
//    NSUserDefaults *userdefaulet = [NSUserDefaults standardUserDefaults];
//    NSNumber *userUin=[dict objectForKey:@"currentLoginUin"];
//    [userdefaulet setValue:userUin forKey:USER_KEY_SOURCE_ID];
//    [userdefaulet synchronize];
//	NdGuestAccountStatus* guestStatus = (NdGuestAccountStatus*)[dict objectForKey:@"NdGuestAccountStatus"];
//	
//	//登录成功后处理
//	if([[NdComPlatform defaultPlatform] isLogined] && success) {
//        account = [TDGAAccount setAccount:[[NdComPlatform defaultPlatform] loginUin]];
//		[account setAccountType:kAccountRegistered];
//		//也可以通过[[NdComPlatform defaultPlatform] getCurrentLoginState]判断是否游客登录状态
//		if (guestStatus) {
//			NSString* strUin = [[NdComPlatform defaultPlatform] loginUin];
//			NSString* strTip = nil;
//			if ([guestStatus isGuestLogined]) {
//				strTip = [NSString stringWithFormat:@"游客账号登录成功,\n uin = %@", strUin];
//			}
//			else if ([guestStatus isGuestRegistered]) {
//				strTip = [NSString stringWithFormat:@"游客成功注册为普通账号,\n uin = %@", strUin];
//			}
//			
//			if ([strTip length] > 0) {
//				[DemoComFunc messageBox: strTip];
//			}
//		}
//		else {
//			// 普通账号登录成功!
//		}
//		
//		[self updateView];
//        [self dismissModalViewControllerAnimated:YES];
//        [self goNextView];
//        
//        
//	}
//	//登录失败处理和相应提示
//	else {
//		int error = [[dict objectForKey:@"error"] intValue];
//		NSString* strTip = [NSString stringWithFormat:@"登录失败, error=%d", error];
//		switch (error) {
//			case ND_COM_PLATFORM_ERROR_USER_CANCEL://用户取消登录
//				if (([[NdComPlatform defaultPlatform] getCurrentLoginState] == ND_LOGIN_STATE_GUEST_LOGIN)) {
//					strTip =  @"当前仍处于游客登录状态";
//				}
//				else {
//					strTip = @"用户未登录";
//                    iszhuxiao = 1;
//				}
//				break;
//				
//				// {{ for demo tip
//			case ND_COM_PLATFORM_ERROR_APP_KEY_INVALID://appId未授权接入, 或appKey 无效
//				strTip = @"登录失败, 请检查appId/appKey";
//				break;
//			case ND_COM_PLATFORM_ERROR_CLIENT_APP_ID_INVALID://无效的应用ID
//				strTip = @"登录失败, 无效的应用ID";
//				break;
//			case ND_COM_PLATFORM_ERROR_HAS_ASSOCIATE_91:
//				strTip = @"有关联的91账号，不能以游客方式登录";
//				break;
//				
//				// }}
//			default:
//				break;
//		}
//		[DemoComFunc messageBox:strTip];
//	}
//}
//
//
//- (void)updateView
//{
//	[[NdComPlatform defaultPlatform] NdGetPortrait:[[NdComPlatform defaultPlatform] loginUin] checkSum:nil delegate:self];
//	
//	int loginState = [[NdComPlatform defaultPlatform] getCurrentLoginState];
//    
//	UILabel *nickName = (UILabel *)[self.view viewWithTag:NICKNAME_TAG];
//	UIButton *switchBtn = (UIButton *)[self.view viewWithTag:SWITCH_TAG];
//	
//	if (loginState == ND_LOGIN_STATE_NORMAL_LOGIN) {
//		nickName.text = [NSString stringWithFormat:@"昵称: %@", [[NdComPlatform defaultPlatform] nickName]];
//		UIImage *img = [UIImage imageNamed:@"change_account.png"];
//		[switchBtn setBackgroundImage:img forState:UIControlStateNormal];
//	}
//	else if (loginState == ND_LOGIN_STATE_GUEST_LOGIN) {
//		nickName.text = @"你好，游客";
//		UIImage *img = [UIImage imageNamed:@"complete_info.png"];
//		[switchBtn setBackgroundImage:img forState:UIControlStateNormal];
//	}
//}

- (void)levelCountChange2:(id)sender
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_LEVEL_COUNT] integerValue];
    [account setLevel:count];
}

//- (void)goNextView
//{
//    CustomTabBarController *tabBarViewController = nil;
//    if(IsiPhone5){
//        tabBarViewController = [[CustomTabBarController alloc] initWithNibName:nil bundle:nil];
//        
//    }else{
//        tabBarViewController = [[CustomTabBarController alloc] initWithNibName:nil bundle:nil];
//    }
//    [self presentViewController:tabBarViewController animated:NO completion:^{
//        
//    }];
//    
//}
@end
