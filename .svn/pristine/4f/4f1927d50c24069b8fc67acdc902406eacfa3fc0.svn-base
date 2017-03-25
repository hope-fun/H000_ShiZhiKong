//
//  CustomTabBarController.m
//  KPYXObject
//
//  Created by qian on 3/24/13.
//  Copyright (c) 2013 abing. All rights reserved.
//

#import "CustomTabBarController.h"
#import "MenuView.h"
#import "StartController.h"
#import "UIDevice+IdentifierAddition.h"
#import "OpenUDID.h"
#import "DownLoadZipClass.h"
#import "RegisterRequest.h"
#import "RegisterManager.h"
#import "DetectVersionRequest.h"
#import "MessageManager.h"
#import "DetectVersionManager.h"
#import <NdComPlatform/NdComPlatform.h>
#define MENUVIEWCONTROLLER 7
#import <QuartzCore/QuartzCore.h>
#define DEGREE_TO_RADIUS(x) (M_PI*x/180)
#import "UIView+cubicAnimation.h"
#import "SupplementManager.h"
#define MENUVIEWCONTROLLER 7
#define kConstrainedSize CGSizeMake(10000,40)//字体最大
#define KSrollTime     16.0

@interface CustomTabBarController ()
{
    NSMutableArray *tipsArray;
    NSArray *numsArray;
    NSArray *numsBlueArray;
    NSString *tipChange;
    NSArray *levelArray;
    BOOL isAlert;
    
}
@end

@implementation CustomTabBarController
@synthesize showTimer;
@synthesize footView;
@synthesize headView;
@synthesize buttonMenu;
@synthesize buttonHall;
@synthesize buttonPackge;
@synthesize baseAlert;
@synthesize vipLevel;

@synthesize buttonBack;
@synthesize buttonHome;
@synthesize buttonTask;
@synthesize buttonFight;
@synthesize buttonStrengthen;
@synthesize buttonEvolution;
@synthesize unreadButton;
@synthesize unreadlabel;
@synthesize redButton;
@synthesize blueButton;
@synthesize greedButton;
@synthesize yellowButon;
@synthesize tiplabel;
@synthesize tiplabel2;
@synthesize blueprogressBar;
@synthesize redprogressBar;
@synthesize yellowprogressBar;
@synthesize levelprogressBar;
@synthesize actionAdd;
@synthesize fightAdd;
@synthesize shildAdd;
@synthesize crystalNumAdd;
@synthesize actionView;
@synthesize fightView;
@synthesize shileView;
@synthesize dimondsView;
@synthesize crystalView;
@synthesize levelView;
@synthesize buttonArray;
@synthesize menuView;
@synthesize ViewMenu;
@synthesize setView;
@synthesize soundFileURLRef;
@synthesize soundFileObject;
@synthesize isHidden;
@synthesize actionNumLabelView;
@synthesize fightNumLabelView;
@synthesize shileNumLabelView;
@synthesize actionNumLabel;
@synthesize crystalNumLabel;
@synthesize dimondsNumLabel;
@synthesize fightNumLabel;
@synthesize levelLabel;
@synthesize shiledNumLabel;
@synthesize vieLabel;
@synthesize actionSum;
@synthesize fightSum;
@synthesize shiledSum;
@synthesize actionNow;
@synthesize fightNow;
@synthesize shiledNow;
@synthesize resume;
@synthesize tagnum;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidAppear:(BOOL)animated {
    //    [[UIScreen mainScreen] setBrightness:0.5];
    
    [super viewDidAppear:animated];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    //    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    //    [self startAnimations];
    [super viewWillAppear:animated];
    
}

- (void)menuSubButtonAction:(NSNotification *)noti
{
    [self tapButtonMisic];
    [self tapHomeMusic];
    //NSLog(@"Receive the notification");
    id obj = [noti userInfo];
    NSNumber *str = [obj objectForKey:@"ButtonTag"];
    int menuSubButtonTag = [str intValue];
    switch (menuSubButtonTag%100) {
            //1
        case buttonTypeSheZhi:
        {
            if(setView == nil){
                if(IsiPhone5){
                    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SettingViewForFive" owner:nil options:nil];
                    NSUserDefaults *user =[NSUserDefaults standardUserDefaults];
                    setView.labelUserID.text = [user objectForKey:USER_KEY_SOURCE_ID];
                    setView = [nib objectAtIndex:0];
                    [setView initSettingButtonState];
                    
                    setView.labelUserID.text = [user objectForKey:USER_KEY_SOURCE_ID];
                    [self.view insertSubview:setView aboveSubview:menuView];
                    setView.frame = CGRectMake(0, 0, 320, 568);
                    BOOL ifOpen = [[user objectForKey:USER_KEY_MUSIC] boolValue];
                    setView.buttonMusic.selected = ifOpen;
                }else{
                    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SettingView" owner:nil options:nil];
                    NSUserDefaults *user =[NSUserDefaults standardUserDefaults];
                    //NSString *string = [user objectForKey:USER_KEY_SOURCE_ID];
                   // NSLog(@"stringstringstring %@",string);
                    setView = [nib objectAtIndex:0];
                    [setView initSettingButtonState];
                    
                    setView.labelUserID.text = [user objectForKey:USER_KEY_SOURCE_ID];
                    [self.view insertSubview:setView aboveSubview:menuView];
                    setView.frame = CGRectMake(0, 0, 320, 480);
                    BOOL ifOpen = [[user objectForKey:USER_KEY_MUSIC] boolValue];
                    setView.buttonMusic.selected = ifOpen;
                }
            }else{
                setView.hidden = NO;
                
            }
            
            
        }
            break;
        case buttonTypeZhanJi:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0101/cg010104/index"];
            menuView.hidden = YES;
            setView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeShangdian:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0901/cg090103/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeLianMeng:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1201/cg120101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeKaPai:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0301/cg030101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
            //6
        case buttonTypeTuJian:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1301/cg130101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeKeFu:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1501/cg150101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeHeCheng:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            //            [menuViewController setWebViewURLwithString:@"/cg0302/cg0302011/index"];
            [menuViewController setWebViewURLwithString:@"/cg0302/cg030201/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeWuPing:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0601/cg060101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeXinXi:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1101/cg110101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
            //11
        case buttonTypePaiMaiHang:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1001/cg100101/index"];
//            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"即将开放，敬请期待" delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
//            [alert setTag:1];
//            [alert show];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeVip:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1203/cg120301/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
            
        }
            break;
        case buttonTypeBianJi:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0303/cg030301/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeBangZhu:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1401/cg140101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
            //16
        case buttonTypeZhanYou:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0501/cg050101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        case buttonTypeZhuanShen:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0302/cg030207/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
            
        }
            break;
        case buttonTypeYuanSu:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0701/cg070101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
            
        }
            break;
        case buttonTypeLiChengBei:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg1601/cg160101/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
            
        }
            break;
        case buttonTypeZhuanbei:
        {
//            [self setButtonsEnabled];
            self.selectedIndex = MENUVIEWCONTROLLER;
            
            CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
            [menuViewController setWebViewURLwithString:@"/cg0602/cg060201/index"];
            menuView.hidden = YES;
            buttonMenu.selected = NO;
        }
            break;
        default:
            break;
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView.tag == 1) {
        CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
        [menuViewController setWebViewURLwithString:@"/cg0101/cg010103/index"];
        
        menuView.hidden = YES;
        buttonMenu.selected = NO;
    }else if(alertView.tag == 10){
        if (buttonIndex == 0) {
            [self sureSupplement];
        }
    
    }
}
-(void)viewDidLoad

{
    
    [super viewDidLoad];
    isHidden = YES;
    isAlert = 0;
    //    [[NSNotificationCenter defaultCenter] addObserver:self
    //                                             selector:@selector(logout:)
    //                                                 name:UCG_SDK_MSG_LOGOUT
    //                                               object:nil];
    [[NdComPlatform defaultPlatform]NdLogin:1];
    self.tabBar.hidden = YES;
    for (UIView *view in self.view.subviews) {
        if (![view isKindOfClass:[UITabBar class]]) {
            if (IsiPhone5) {
                view.frame = CGRectMake(0, 0, 320, 600);
            }else{
                view.frame = CGRectMake(0, 0, 320, 480);
            }
        }else{
        }
    }
    
    numsArray = [[NSArray alloc] initWithObjects:@"0.png",@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png",@"9.png",nil];
    numsBlueArray = [[NSArray alloc] initWithObjects:@"lev0.png",@"lev1.png",@"lev2.png",@"lev3.png",@"lev4.png",@"lev5.png",@"lev6.png",@"lev7.png",@"lev8.png",@"lev9.png",nil];
    
    

    
    levelArray = [[NSArray alloc] initWithObjects:@"000.png",@"vip10.png",@"vip20.png",@"vip30.png",@"vip40.png",@"vip50.png",@"vip60.png",@"vip70.png",@"vip80.png",@"vip90.png",@"vip100.png",@"vip11.png",@"vip12.png", nil];
   
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Tips-info" ofType:@"plist"];
    tipsArray = [[NSMutableArray alloc] initWithContentsOfFile:plistPath];
    NSURL *tapSound   = [[NSBundle mainBundle] URLForResource: @"按钮2"
                                                withExtension: @"wav"];
    // Store the URL as a CFURLRef instance
    self.soundFileURLRef = (__bridge CFURLRef) tapSound;
    // Create a system sound object representing the sound file.
    AudioServicesCreateSystemSoundID (
                                      
                                      soundFileURLRef,
                                      &soundFileObject
                                      );
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noGoBack:) name:@"com.noGoBack" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(canGoBack:) name:@"com.canGoBack" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(menuSubButtonAction:) name:@"com.ButtonPressed" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(startGame:) name:@"com.startGame" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(unreadMessageCountChange:) name:@"com.unreadMessageCountChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(startAnimationsWithHiddenFootAndHead) name:@"com.hiddenMenu" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(actionEnergyCountChange:) name:@"com.actionEnergyChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fightingEnergyCountChange:) name:@"com.fightingEnergyChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(shieldEnergyCountChange:) name:@"com.shieldEnergyChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(levelCountChange:) name:@"com.levelChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(expPercentCountChange:) name:@"com.expPercentChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vipLevelCountChange:) name:@"com.vipLevelChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(crystalNumCountChange:) name:@"com.crystalNumChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(diamondsNumCountChange:) name:@"com.DiamondsNumChange" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(worldMessageChange:) name:@"com.worldNewsChange" object:nil];
    
    [[NSNotificationCenter defaultCenter ] addObserver:self selector:@selector(addPowerChange:) name:@"com.energyChange" object:nil];
    
    CustomWebViewController *webViewHall = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webHall];
    CustomWebViewController *webViewPackge = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webPackge];
    CustomWebViewController *webViewhome = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webHome];
    CustomWebViewController *webViewTask = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webTask];
    CustomWebViewController *webViewFight = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webFight];
    CustomWebViewController *webViewStrengthen = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webStrengthen];
    CustomWebViewController *webViewEvolution = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webEvolution];
    CustomWebViewController *webViewmenu = [[CustomWebViewController alloc] initWithNibName:@"CustomWebViewController" bundle:nil andType:webMenu];
    
    
    self.viewControllers = @[webViewHall,webViewPackge,webViewhome,webViewTask,webViewFight,webViewStrengthen,webViewEvolution,webViewmenu];
   
    [self addCustomElements];
    buttonArray = [NSArray arrayWithObjects:buttonMenu,buttonHall, buttonPackge,buttonBack,
                   buttonHome, buttonTask,buttonFight,buttonStrengthen,buttonEvolution,nil];
    
    self.selectedViewController = webViewhome;
    [self startAnimationsWithHiddenFootAndHead];
    
    [[self tabBar] setHidden:YES];
}

- (void)addAnyPower:(NSTimer *)theTimer{
    if (actionNow < actionSum) {
        actionNow = actionNow + resume;
        if (actionNow > actionSum) {
            actionNow = actionSum;
        }
    }
    if (fightNow < fightSum) {
        fightNow = fightNow + resume;
        if (fightNow > fightSum) {
            fightNow = fightSum;
        }
    }
    if (shiledNow < shiledSum) {
        shiledNow = shiledNow + resume;
        if (shiledNow > shiledSum) {
            shiledNow = shiledSum;
        }
    }
    [blueprogressBar setProgress:actionNow];
    if ([actionView.subviews count]) {
  
    for(int i = ([actionView.subviews count]-1);i >= 0;i--){
        [[ actionView.subviews objectAtIndex:i] removeFromSuperview];
    }
    }
    NSMutableArray *picArray = [self getNumberPicture:actionNow];
    for (int i = 0; i<[picArray count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
        image1.frame = CGRectMake((i*8), 9, 8, 9);
        [actionView addSubview:image1];
    }
    actionNumLabel.text = @"         /";
    //NSLog(@"actionSum %d",actionSum);
    NSMutableArray *picArray2 = [self getNumberPicture:actionSum];
    for (int i = 0; i<[picArray2 count]; i++) {
        UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray2 objectAtIndex:i]]];
        image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
        [actionView addSubview:image2];
    }
    [self.headView bringSubviewToFront:actionAdd];
    
    [redprogressBar setProgress:fightNow];
    if ([fightView.subviews count]) {
        
    for(int i = ([fightView.subviews count]-1);i >= 0;i--){
        [[ fightView.subviews objectAtIndex:i] removeFromSuperview];
    }
    }
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    fightSum = [[user objectForKey:USER_KEY_FIGHTMAX_COUNT] integerValue];
    //    fightNumLabel.text = [NSString stringWithFormat:@"%d  /  %d",count,fightSum];
    NSMutableArray *picArray3 = [self getNumberPicture:fightNow];
    for (int i = 0; i<[picArray3 count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray3 objectAtIndex:i]]];
        image1.frame = CGRectMake(0+(i*8), 9, 8, 9);
        [fightView addSubview:image1];
    }
    fightNumLabel.text = @"        /";
    NSMutableArray *picArray4 = [self getNumberPicture:fightSum];
    for (int i = 0; i<[picArray4 count]; i++) {
        UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray4 objectAtIndex:i]]];
        image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
        [fightView addSubview:image2];
    }
    [self.headView bringSubviewToFront:fightAdd];
    [yellowprogressBar setProgress:shiledNow];
    if ([shileView.subviews count]) {
   
    for(int i = ([shileView.subviews count]-1);i >= 0;i--){
        [[ shileView.subviews objectAtIndex:i] removeFromSuperview];
    }
}
    shiledSum = [[user objectForKey:USER_KEY_SHILEDMAX_COUNT] integerValue];

    //    shiledNumLabel.text = [NSString stringWithFormat:@"%d  /  %d",count,shiledSum];
    NSMutableArray *picArray5 = [self getNumberPicture:shiledNow];
    for (int i = 0; i<[picArray5 count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray5 objectAtIndex:i]]];
        image1.frame = CGRectMake(0+(i*8), 9, 8, 9);
        [shileView addSubview:image1];
    }
    shiledNumLabel.text = @"        /";
   // NSLog(@"actionSum %d",actionSum);
    NSMutableArray *picArray6 = [self getNumberPicture:shiledSum];
    for (int i = 0; i<[picArray6 count]; i++) {
        UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray6 objectAtIndex:i]]];
        image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
        [shileView addSubview:image2];
    }
    [self.headView bringSubviewToFront:shildAdd];
}

- (void)handleMaxShowTimer:(NSTimer *)theTimer{
    
    
    NSString *tipsString = [self getRandomTips];
    
    tiplabel.label1.text = tipsString;
    if (tipChange.length > 0) {
        tiplabel.label1.text = tipChange;
        tipChange = @"";
    }
   // NSLog(@"bbbbbbbbbbbbbbbbb%@",tiplabel.label1.text);
}


-(void)addCustomElements

{
   
    // Background
    UIImageView* headerbgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ui上底.png"]];
    headerbgView.frame = CGRectMake(0, 0, self.tabBar.frame.size.width, self.tabBar.frame.size.height+5);
    headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tabBar.frame.size.width, self.tabBar.frame.size.height+31)];
    headView.backgroundColor = [UIColor clearColor];
    UIImage *btnImage = [UIImage imageNamed:@"菜单60.png"];
    UIImage *btnImageSelected = [UIImage imageNamed:@"菜单70.png"];
    self.buttonMenu = [UIButton buttonWithType:UIButtonTypeCustom]; //Setup the button
    buttonMenu.frame = CGRectMake(264, 10, 40, 38);
    [buttonMenu setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonMenu setBackgroundImage:btnImageSelected forState:UIControlStateSelected];
    [buttonMenu setBackgroundImage:btnImageSelected forState:UIControlStateHighlighted];
    [buttonMenu setTag:101];
    
    tiplabel = [[ROllLabel alloc] initWithFrame:CGRectMake(0, 54, 265, 15) withBgColor:[UIColor clearColor]];
    tiplabel.tag = 1111;
    //设置滚动一次需要的时间
    [tiplabel setTimeInterval:KSrollTime];
    //设置滚动时的动画效果
    [tiplabel setAnimationOption:UIViewAnimationOptionCurveEaseInOut];
    [tiplabel rollOnlyOneTitle:@"要升级时请尽量将战斗能量与护盾能量消耗光，因为升级后会无条件补满，不要浪费。" textcolor:[UIColor whiteColor] font:[UIFont systemFontOfSize:13]];
    
    [headView addSubview:tiplabel];
    
    [self addTimer];
   
    
    UIImageView* spaceImageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"进度条底.png"]];
    spaceImageView1.frame = CGRectMake(39, 17, 54,13);
    
    UIImageView* spaceImageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"进度条底.png"]];
    spaceImageView2.frame = CGRectMake(142, 17, 54,13);
    
    UIImageView* spaceImageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"进度条底.png"]];
    spaceImageView3.frame = CGRectMake(246, 17, 54,13);
 
    //TODO progressBar
    if (blueprogressBar == nil) {
        blueprogressBar =[[ADVPercentProgressBar alloc] initWithFrame:CGRectMake(37, 17, 55, 14)
                                                  andProgressBarColor:ADVProgressBarGreen];
        
        [blueprogressBar setShowPercent:NO];
        [blueprogressBar setMinProgressValue:0];
        [blueprogressBar setMaxProgressValue:20];

    }
    
    if (redprogressBar == nil) {
        redprogressBar =[[ADVPercentProgressBar alloc] initWithFrame:CGRectMake(140, 17, 55, 14)
                                                 andProgressBarColor:ADVProgressBarRed];
        
        [redprogressBar setShowPercent:NO];
        [redprogressBar setMinProgressValue:0];
        [redprogressBar setMaxProgressValue:20];
    }
    
    if (yellowprogressBar == nil) {
        yellowprogressBar =[[ADVPercentProgressBar alloc] initWithFrame:CGRectMake(244, 17, 55, 14)
                                                    andProgressBarColor:ADVProgressBarBrown];
        
        [yellowprogressBar setShowPercent:NO];
        [yellowprogressBar setMinProgressValue:0];
        [yellowprogressBar setMaxProgressValue:20];
    }
    
    
    if (levelprogressBar == nil) {
        levelprogressBar =[[ADVPercentProgressBar alloc] initWithFrame:CGRectMake(-2, 45, 61, 10)
                                                   andProgressBarColor:ADVProgressBarBlue];
        
        [levelprogressBar setShowPercent:NO];
        [levelprogressBar setMinProgressValue:0];
        [levelprogressBar setMaxProgressValue:100];
    }
    
   
    
    actionNumLabelView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"11.png"]];
    actionNumLabelView.frame = CGRectMake(60, 10, 6, 8);
    // actionNumLabelView.image = [UIImage imageNamed:@"11.png"];
    
    fightNumLabelView = [[UIImageView alloc]initWithFrame:CGRectMake(162, 10, 6, 8)];
    fightNumLabelView.image = [UIImage imageNamed:@"11.png"];
    
    shileNumLabelView = [[UIImageView alloc]initWithFrame:CGRectMake(265, 10, 6, 8)];
    shileNumLabelView.image = [UIImage imageNamed:@"11.png"];
    
    actionNumLabel = [[UILabel alloc] init];
    actionNumLabel.frame = CGRectMake(39, 10, 140, 8);
    actionNumLabel.backgroundColor = [UIColor clearColor];
    actionNumLabel.textColor = [UIColor whiteColor];
    actionNumLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    fightNumLabel = [[UILabel alloc] init];
    fightNumLabel.frame = CGRectMake(142, 10, 140, 8);
    fightNumLabel.backgroundColor = [UIColor clearColor];
    fightNumLabel.textColor = [UIColor whiteColor];
    fightNumLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    shiledNumLabel = [[UILabel alloc] init];
    shiledNumLabel.frame = CGRectMake(246, 10, 140, 8);
    shiledNumLabel.backgroundColor = [UIColor clearColor];
    shiledNumLabel.textColor = [UIColor whiteColor];
    shiledNumLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    levelLabel = [[UILabel alloc] init];
    levelLabel.frame = CGRectMake(20, 39, 20, 8);
    levelLabel.backgroundColor = [UIColor clearColor];
    levelLabel.textColor = [UIColor whiteColor];
    levelLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    crystalNumLabel = [[UILabel alloc] init];
    crystalNumLabel.frame = CGRectMake(80, 41, 50, 8);
    crystalNumLabel.backgroundColor = [UIColor clearColor];
    crystalNumLabel.textColor = [UIColor whiteColor];
    crystalNumLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    dimondsNumLabel = [[UILabel alloc] init];
    dimondsNumLabel.frame = CGRectMake(202, 41, 50, 8);
    dimondsNumLabel.backgroundColor = [UIColor clearColor];
    dimondsNumLabel.textColor = [UIColor whiteColor];
    dimondsNumLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    vieLabel = [[UILabel alloc] init];
    vieLabel.frame = CGRectMake(5, 59, 40, 8);
    vieLabel.backgroundColor = [UIColor clearColor];
    vieLabel.textColor = [UIColor whiteColor];
    vieLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    
    vipLevel = [[UIImageView alloc]initWithFrame:CGRectMake(30, 35, 35, 12)];
    
    UIImageView* spaceImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"等级进度条.png"]];
    spaceImageView.frame = CGRectMake(0, 45, 65,10);

    
    btnImage = [UIImage imageNamed:@"header_home.png"];
    btnImageSelected = [UIImage imageNamed:@"header_home_pressed.png"];
    self.buttonHall = [UIButton buttonWithType:UIButtonTypeCustom]; //Setup the button
    buttonHall.frame = CGRectMake(127, 5, 68, 30); // Set the frame (size and position) of the button)
    [buttonHall setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonHall setBackgroundImage:btnImageSelected forState:UIControlStateSelected];
    [buttonHall setBackgroundImage:btnImageSelected forState:UIControlStateHighlighted];
    [buttonHall setSelected:YES];
    [buttonHall setTag:102];
    
    btnImage = [UIImage imageNamed:@"招募10.png"];
    btnImageSelected = [UIImage imageNamed:@"招募20.png"];
    self.buttonPackge = [UIButton buttonWithType:UIButtonTypeCustom]; //Setup the button
    buttonPackge.frame = CGRectMake(213, 10, 40, 38);
    [buttonPackge setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonPackge setBackgroundImage:btnImageSelected forState:UIControlStateSelected];
    [buttonPackge setBackgroundImage:btnImageSelected forState:UIControlStateHighlighted];
    [buttonPackge setTag:103];
    
    UIImageView* bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"新ui下0.png"]];
    bgView.frame = CGRectMake(0, 0, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
    //NSLog(@"%f,%f",self.tabBar.frame.size.width, self.tabBar.frame.size.height);
    if(IsiPhone5)
    {
        footView = [[UIView alloc] initWithFrame:CGRectMake(0, 519, self.tabBar.frame.size.width, self.tabBar.frame.size.height-4)];
        
    }else{
        footView = [[UIView alloc] initWithFrame:CGRectMake(0, 432, self.tabBar.frame.size.width, self.tabBar.frame.size.height-4)];
        
    }
    footView.backgroundColor = [UIColor clearColor];
    
    
    self.tabBar.hidden = YES;
    self.tabBar.tintColor = [UIColor clearColor];
    self.tabBar.backgroundImage = nil;
    [self.view addSubview:headView];
    [self.view addSubview:footView];
    [self.headView addSubview:headerbgView];
    [self.footView addSubview:bgView];
    
    // Initialise our two images
    //buttonBack
    btnImage = [UIImage imageNamed:@"返回70.png"];
    btnImageSelected = [UIImage imageNamed:@"返回10.png"];
    self.buttonBack = [UIButton buttonWithType:UIButtonTypeCustom]; //Setup the button
    buttonBack.frame = CGRectMake(12, 10, 40, 38); // Set the frame (size and position) of the button)
    [buttonBack setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonBack setBackgroundImage:btnImageSelected forState:UIControlStateSelected];
    [buttonBack setBackgroundImage:btnImageSelected forState:UIControlStateHighlighted];
    [buttonBack setBackgroundImage:[UIImage imageNamed:@"返回30.png"] forState:UIControlStateDisabled];
    [buttonBack setTag:104]; // Assign the button a “tag" so when our “click" event is called we know which button was pressed.
    //    [buttonBack setEnabled:NO]; // Set this button as selected (we will select the others to false as we only want Tab 1 to be selected initially
    
    
    
    // Now we repeat the process for the other buttons
    //buttonHome
    btnImage = [UIImage imageNamed:@"首页70.png"];
    btnImageSelected = [UIImage imageNamed:@"首页20.png"];
    self.buttonHome = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonHome.frame = CGRectMake(62, 10, 40, 38);
    [buttonHome setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonHome setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [buttonHome setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    [buttonHome setTag:105];
    
    btnImage = [UIImage imageNamed:@"剧情.png"];
    btnImageSelected = [UIImage imageNamed:@"剧情3.png"];
    self.buttonTask = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonTask.frame = CGRectMake(112, 10, 40, 38);
    [buttonTask setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonTask setBackgroundImage:btnImageSelected forState:UIControlStateSelected];
    [buttonTask setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    
    [buttonTask setTag:106];
    
    btnImage = [UIImage imageNamed:@"对战.png"];
    btnImageSelected = [UIImage imageNamed:@"对战4.png"];
    self.buttonFight = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonFight.frame = CGRectMake(162, 10, 42, 38);
    [buttonFight setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonFight setBackgroundImage:btnImageSelected forState:UIControlStateSelected];
    [buttonFight setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    
    [buttonFight setTag:107];
    
    btnImage = [UIImage imageNamed:@"move.png"];
    btnImageSelected = [UIImage imageNamed:@"move_pressed.png"];
    self.buttonStrengthen = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonStrengthen.frame = CGRectMake(53 , 5, 75, 35); // Set the frame (size and position) of the button)
    [buttonStrengthen setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonStrengthen setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [buttonStrengthen setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    
    [buttonStrengthen setTag:108];
    
    btnImage = [UIImage imageNamed:@"消息0.png"];
    btnImageSelected = [UIImage imageNamed:@"消息0.png"];
    self.buttonEvolution = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonEvolution.frame = CGRectMake(268, 41, 50, 25);
    //    buttonEvolution.frame = CGRectMake(266, 4, 52, 43);
    [buttonEvolution setBackgroundImage:btnImage forState:UIControlStateNormal];
    [buttonEvolution setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [buttonEvolution setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    [buttonEvolution setTag:109];
    
    btnImage = [UIImage imageNamed:@"绿色加0.png"];
    btnImageSelected = [UIImage imageNamed:@"绿色加0.png"];
    self.greedButton = [UIButton buttonWithType:UIButtonTypeCustom];
    greedButton.frame = CGRectMake(90, 16, 16, 15);
    [greedButton setBackgroundImage:btnImage forState:UIControlStateNormal];
    [greedButton setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [greedButton setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    [greedButton setTag:201];
    
    
    btnImage = [UIImage imageNamed:@"红色加0.png"];
    btnImageSelected = [UIImage imageNamed:@"红色加0.png"];
    self.redButton = [UIButton buttonWithType:UIButtonTypeCustom];
    redButton.frame = CGRectMake(192, 16, 16, 15);
    [redButton setBackgroundImage:btnImage forState:UIControlStateNormal];
    [redButton setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [redButton setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    [redButton setTag:202];
    
    btnImage = [UIImage imageNamed:@"黄色加0.png"];
    btnImageSelected = [UIImage imageNamed:@"黄色加0.png"];
    self.yellowButon = [UIButton buttonWithType:UIButtonTypeCustom];
    yellowButon.frame = CGRectMake(296, 16, 16, 15);
    [yellowButon setBackgroundImage:btnImage forState:UIControlStateNormal];
    [yellowButon setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [yellowButon setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    [yellowButon setTag:203];
    
    btnImage = [UIImage imageNamed:@"蓝色加0.png"];
    btnImageSelected = [UIImage imageNamed:@"蓝色加0.png"];
    self.blueButton = [UIButton buttonWithType:UIButtonTypeCustom];
    blueButton.frame = CGRectMake(253, 36, 16, 15);
    [blueButton setBackgroundImage:btnImage forState:UIControlStateNormal];
    [blueButton setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [blueButton setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    [blueButton setTag:204];
    
    
    btnImage = [UIImage imageNamed:@"number_bg_1.png"];
    btnImageSelected = [UIImage imageNamed:@"number_bg_1.png"];
    self.unreadButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    unreadlabel = [[UILabel alloc] init];
    unreadButton.frame = CGRectMake(295, 38, 25, 15);
    unreadlabel.backgroundColor = [UIColor clearColor];
    unreadlabel.textColor = [UIColor whiteColor];
    unreadlabel.frame = CGRectMake(294, 41, 25, 7);
    //    unreadlabel.numberOfLines = 1;
    unreadlabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    [unreadButton setBackgroundImage:btnImage forState:UIControlStateNormal];
    [unreadButton setBackgroundImage:btnImageSelected forState :UIControlStateSelected];
    [unreadButton setBackgroundImage:btnImageSelected forState :UIControlStateHighlighted];
    [unreadButton setBackgroundImage:btnImageSelected forState :UIControlStateDisabled];
    unreadButton.enabled = NO;
    unreadlabel.textAlignment = NSTextAlignmentCenter;
    //    unreadlabel.adjustsFontSizeToFitWidth = YES;
    
    self.actionView = [[UIView alloc]initWithFrame:CGRectMake(40, 0, 20, 40)];
    self.fightView = [[UIView alloc] initWithFrame:CGRectMake(141, 0, 20, 40)];
    self.shileView = [[UIView alloc] initWithFrame:CGRectMake(245, 0, 20, 40)];
    self.dimondsView = [[UIView alloc] initWithFrame:CGRectMake(185, 36, 50, 14)];
    self.crystalView = [[UIView alloc] initWithFrame:CGRectMake(88, 36, 50, 14)];
    self.levelView = [[UIView alloc] initWithFrame:CGRectMake(0, 34, 25, 14)];
    self.actionAdd = [UIButton buttonWithType:UIButtonTypeCustom];
    actionAdd.frame = CGRectMake(10, 3, 94, 25);
//    actionAdd.backgroundColor = [UIColor redColor];
    actionAdd.tag = 204;
//    actionAdd.alpha = 0.5;
    
    self.fightAdd = [UIButton buttonWithType:UIButtonTypeCustom];
    fightAdd.frame = CGRectMake(111,3, 101, 25);
    fightAdd.tag = 205;
//     fightAdd.backgroundColor = [UIColor redColor];
//     fightAdd.alpha = 0.5;
    
    self.shildAdd = [UIButton buttonWithType:UIButtonTypeCustom];
    shildAdd.frame = CGRectMake(222, 0, 94, 25);
    shildAdd.tag = 206;
    //shildAdd.backgroundColor = [UIColor blackColor];
//    shildAdd.backgroundColor = [UIColor redColor];
//    shildAdd.alpha = 0.5;
    
    self.crystalNumAdd = [UIButton buttonWithType:UIButtonTypeCustom];
    crystalNumAdd.frame = CGRectMake(180, 36, 98, 14);
   //crystalNumAdd.backgroundColor = [UIColor blackColor];


    
    // Add my new buttons to the view
    [self.footView addSubview:buttonMenu];
    //    [self.headView addSubview:buttonHall];
    //    [self.headView addSubview:buttonStrengthen];
    [self.footView addSubview:buttonBack];
    [self.footView addSubview:buttonHome];
    [self.footView addSubview:buttonTask];
    [self.footView addSubview:buttonFight];
    [self.footView addSubview:buttonPackge];
    
    
   
    
    [self.headView addSubview:spaceImageView1];
    [self.headView addSubview:spaceImageView2];
    [self.headView addSubview:spaceImageView3];
    [self.headView addSubview:blueprogressBar];
    [self.headView addSubview:yellowprogressBar];
    [self.headView addSubview:redprogressBar];
    [self.headView addSubview:spaceImageView];
    [self.headView addSubview:levelprogressBar];
    [self.headView addSubview:yellowButon];
    [self.headView addSubview:greedButton];
    [self.headView addSubview:buttonEvolution];
    [self.headView addSubview:unreadButton];
    [self.headView addSubview:unreadlabel];
    [self.headView addSubview:redButton];
    [self.headView addSubview:blueButton];
    
    //[self.headView addSubview:actionNumLabel];
    //[self.headView addSubview:fightNumLabel];
   // [self.headView addSubview:shiledNumLabel];
    [self.headView addSubview:levelLabel];
    //    [self.headView addSubview:dimondsNumLabel];
    //    [self.headView addSubview:crystalNumLabel];
    [self.headView addSubview:vieLabel];
    
    
    [self.headView addSubview:actionView];
    [self.headView addSubview:fightView];
    [self.headView addSubview:shileView];
    [self.headView addSubview:crystalView];
    [self.headView addSubview:dimondsView];
    [self.headView addSubview:levelView];
    
    [self.headView addSubview:actionNumLabelView];
    [self.headView addSubview:fightNumLabelView];
    [self.headView addSubview:shileNumLabelView];
    
    [self.headView addSubview:actionAdd];
    [self.headView addSubview:fightAdd];
    [self.headView addSubview:shildAdd];
    [self.headView addSubview:crystalNumAdd];
    [self.headView addSubview:vipLevel];
    [self unreadMessageCountChange:nil];
    
    
    // Setup event handlers so that the buttonClicked method will respond to the touch up inside event.
      
//        NSTimeInterval time2Interval = 60;
//        NSTimer *addTimer = [NSTimer scheduledTimerWithTimeInterval:time2Interval target:self selector:@selector(addAnyPower:) userInfo:nil repeats:YES];
//        [addTimer fire];
    
    
    [buttonMenu addTarget:self action:@selector(menuButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [buttonHall addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonPackge addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonBack addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonHome addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTask addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonFight addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonStrengthen addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonEvolution addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [crystalNumAdd addTarget:self action:@selector(buttonToShandian:) forControlEvents:UIControlEventTouchUpInside];
    //    [redButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    //    [yellowButon addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    //    [greedButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [actionAdd addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [fightAdd addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [shildAdd addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];

}

- (void)buttonAction:(id)sender
{
    
    tagnum = [sender tag];
    NSString *selectString;
    switch (tagnum) {
        case 204:
            selectString = [NSString stringWithFormat:@"消耗20钻石补充满行动能量？"];
            break;
        case 205:
            selectString = [NSString stringWithFormat:@"消耗20钻石补充满战斗能量？"];
            break;
        case 206:
            selectString = [NSString stringWithFormat:@"消耗20钻石补充满护盾能量？"];
            break;
        default:
            break;
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:selectString delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [alert setTag:10];
    [alert show];
    
}

- (void)sureSupplement
{
    [self tapButtonMisic];
    isAlert = 1;
    baseAlert = [[UIAlertView alloc] initWithTitle:@"请稍等" message:nil delegate:self
                                 cancelButtonTitle:nil otherButtonTitles:nil, nil];
    [baseAlert show];
    
    UIActivityIndicatorView *aiv = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
   
    //aiv.center = CGPointMake(baseAlert.bounds.size.width/2.0f, baseAlert.bounds.size.height-40.0f);
    aiv.center = CGPointMake(142, 73);
    [aiv startAnimating];
    [baseAlert addSubview:aiv];
    
    //tagnum = [sender tag];
    NSString *jsonString;
    switch (tagnum) {
        case 204:
            jsonString = [NSString stringWithFormat:@"supplementType=ACTIONENERGY"];
            break;
        case 205:
            jsonString = [NSString stringWithFormat:@"supplementType=FIGHTINGENERGY"];
            break;
        case 206:
            jsonString = [NSString stringWithFormat:@"supplementType=SHIELDENERGY"];
            break;
        default:
            break;
    }
    SupplementManager *supplementManaget = [[SupplementManager alloc] init];
    [supplementManaget sendSupplementRequestWithString:jsonString];
}
- (void)startGame:(id)some
{
    if(isHidden == YES){
        MessageManager *messageManager = [[MessageManager alloc] init];
        [messageManager  sendMessageRequestWithString:nil];
        [self performSelector:@selector(beginFootAndHead) withObject:self afterDelay:1];
        
        self.selectedIndex = 2;
        
        isHidden = NO;
    }
}
-(void)beginFootAndHead
{
    [self startAnimationsWithNOHiddenFootAndHead];
}
- (void)menuButtonPressed:(id)sender
{
    [self tapButtonMisic];
    
    //    [self buttonClicked:sender];
    [buttonMenu setSelected:!buttonMenu.selected];
    
    [self setButtonState:101];
    self.setView.hidden = YES;
    [self.setView.textFieldDuiJiang resignFirstResponder];
    if(menuView == nil){
        if(IsiPhone5){
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MenuViewForFive" owner:nil options:nil];
            menuView = [nib objectAtIndex:0];
            menuView.frame = CGRectMake(0, 30, 320, 568);
            
        }else{
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:nil options:nil];
            menuView = [nib objectAtIndex:0];
            menuView.frame = CGRectMake(0, 30, 320, 480);
            
        }
//        [self setButtonsEnabled];
        [self.view insertSubview:menuView belowSubview:headView];
    }else{
        if(menuView.hidden == NO){
//            [self setButtonsEnabled];
        }else{
//            [self setButtonsEnabled];
        }
        menuView.hidden = !menuView.hidden;
    }
}

- (void)buttonToShandian:(id)sender
{
//    [self setButtonsEnabled];
    [self tapButtonMisic];
    self.selectedIndex = MENUVIEWCONTROLLER;
    
    CustomWebViewController *menuViewController = (CustomWebViewController *)self.selectedViewController;
    [menuViewController setWebViewURLwithString:@"/cg0901/cg090101/index"];
    menuView.hidden = YES;
    buttonMenu.selected = NO;
    
}

- (void)buttonClicked:(id)sender
{
    
    [self tapButtonMisic];
   
    int tagNum = [sender tag];
    if (tagNum == 105 || tagNum == 107 || tagNum == 103 || tagNum == 104 ) {
        [self tapHomeMusic];
    }
    
    if (tagNum == 106) {
        [self tapJuqingMusic];
    }
    
    [self setButtonState:tagNum];
    if(tagNum == 104)
    {
        CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;
        if([viewController.webURLArray count] > 1){
            NSLog(@"%@",viewController.webURLArray.description);
            [viewController.webURLArray removeLastObject];
            NSString *urlString = [viewController.webURLArray lastObject];
            if ([urlString rangeOfString:@"notice"].length != 0) {
                urlString = @"http://10.20.70.24:8888/kpyx-logical-service/cg0101/cg010103/index";
            }
            NSURL *url = [NSURL URLWithString:urlString];
            NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
            [self setWebViewHeadWithRequest:request];
            [viewController.myWebView loadRequest:request];
            self.buttonBack.enabled = NO;
            
        }
        return;
    }
    
    for(UIButton *button in buttonArray){
        if(button.tag == tagNum && button.tag != 104 && button.tag != 101)
        {
            if(button.tag%100 >= 1 && button.tag%100 <= 3){
                
                self.selectedIndex = button.tag%100 -2;
                if(self.selectedIndex == 0)
                {
                    for(CustomWebViewController *obj in  self.viewControllers)
                    {
                        if(obj != self.selectedViewController){
                            [obj.myWebView stopLoading];
                            
                        }
                    }
                    [[NSURLCache sharedURLCache] removeAllCachedResponses];
                    
                    CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;
                    
                    
#ifdef KPYX_QAOne
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/cg0101/cg010102/index"];
#endif
#ifdef KPYX_QATwo
                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/cg0101/cg010102/index"];
#endif
#ifdef KPYX_QAThree
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0101/cg010102/index"];
#endif
#ifdef KPYX_QAFour
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.67:8080/kpyx-logical-service/cg0101/cg010102/index"];
#endif
                    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
                    
                    [self setWebViewHeadWithRequest:request];
                    [viewController.myWebView loadRequest:request];
                   
                }else if(self.selectedIndex == 1)
                {
                    for(CustomWebViewController *obj in  self.viewControllers)
                    {
                        if(obj != self.selectedViewController){
                            [obj.myWebView stopLoading];
                            
                        }
                    }
                    [[NSURLCache sharedURLCache] removeAllCachedResponses];
                    CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;
                    
#ifdef KPYX_QAOne
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/cg0801/cg080102/index"];
#endif
#ifdef KPYX_QATwo
                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/cg0801/cg080102/index"];
#endif
#ifdef KPYX_QAThree
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0801/cg080102/index"];
#endif
#ifdef KPYX_QAFour
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0801/cg080102/index"];
#endif
                    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
                    
                    [self setWebViewHeadWithRequest:request];
                    [viewController.myWebView loadRequest:request];
                }
            }else if(button.tag%100 >= 4 && button.tag%100 <= 9){
                self.selectedIndex = button.tag%100 -3;
                
                if(self.selectedIndex == 2)
                {
                    for(CustomWebViewController *obj in  self.viewControllers)
                    {
                        if(obj != self.selectedViewController){
                            [obj.myWebView stopLoading];
                             
                        }
                    }
                    [[NSURLCache sharedURLCache] removeAllCachedResponses];
                    CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;
#ifdef KPYX_QAOne
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/cg0101/cg010103/index"];
#endif
#ifdef KPYX_QATwo
                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/cg0101/cg010103/index"];
#endif
#ifdef KPYX_QAThree
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0101/cg010103/index"];
#endif
#ifdef KPYX_QAFour
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service//cg0101/cg010103/index"];
#endif
                    
                    //#ifdef KPYX_QAOne
                    //                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/index?start=false"];
                    //#endif
                    //#ifdef KPYX_QATwo
                    //                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/index?start=false"];
                    //#endif
                    //#ifdef KPYX_QAThree
                    //                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.67:8080/kpyx-logical-service/index?start=false"];
                    //#endif
                    //#ifdef KPYX_QAFour
                    //                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.67:8080/kpyx-logical-service/index?start=false"];
                    //#endif
                    //
                    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
                    [self setWebViewHeadWithRequest:request];
                    [viewController.myWebView loadRequest:request];
                    
                }else if(self.selectedIndex == 3)
                {
                    
                    for(CustomWebViewController *obj in  self.viewControllers)
                    {
                        if(obj != self.selectedViewController){
                            [obj.myWebView stopLoading];
                            
                        }
                    }
                    [[NSURLCache sharedURLCache] removeAllCachedResponses];
                    CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;
#ifdef KPYX_QAOne
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/cg0201/cg020101/index"];
#endif
#ifdef KPYX_QATwo
                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/cg0201/cg020101/index"];
#endif
#ifdef KPYX_QAThree
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0201/cg020101/index"];
#endif
#ifdef KPYX_QAFour
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0201/cg020101/index"];
#endif
                    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
                    [self setWebViewHeadWithRequest:request];
                    [viewController.myWebView loadRequest:request];
                }else if(self.selectedIndex == 4)
                {
                    
                    for(CustomWebViewController *obj in  self.viewControllers)
                    {
                        if(obj != self.selectedViewController){
                            [obj.myWebView stopLoading];
                             
                        }
                    }
                    
                    [[NSURLCache sharedURLCache] removeAllCachedResponses];
                    CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;
#ifdef KPYX_QAOne
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/cg0401/cg040102/index/0"];
#endif
#ifdef KPYX_QATwo
                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/cg0401/cg040102/index/0"];
#endif
#ifdef KPYX_QAThree
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0401/cg040102/index/0"];
#endif
#ifdef KPYX_QAFour
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg0401/cg040102/index/0"];
#endif
                    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
                    [self setWebViewHeadWithRequest:request];
                    [viewController.myWebView loadRequest:request];
                }else if(self.selectedIndex == 5)
                {
                    
                    for(CustomWebViewController *obj in  self.viewControllers)
                    {
                        if(obj != self.selectedViewController){
                            [obj.myWebView stopLoading];
                        }
                    }
                    [[NSURLCache sharedURLCache] removeAllCachedResponses];
                    CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;
#ifdef KPYX_QAOne
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/cg1901/cg190101/index"];
#endif
#ifdef KPYX_QATwo
                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/cg1901/cg190101/index"];
#endif
#ifdef KPYX_QAThree
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg1901/cg190101/index"];
#endif
#ifdef KPYX_QAFour
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg1901/cg190101/index"];
#endif
                    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
                    [self setWebViewHeadWithRequest:request];
                    [viewController.myWebView loadRequest:request];
                }else if(self.selectedIndex == 6)
                {
                    
                    for(CustomWebViewController *obj in  self.viewControllers)
                    {
                        if(obj != self.selectedViewController){
                            [obj.myWebView stopLoading];
                        }
                    }
                    [[NSURLCache sharedURLCache] removeAllCachedResponses];
                    CustomWebViewController *viewController = (CustomWebViewController *)self.selectedViewController;

#ifdef KPYX_QAOne
                    NSURL *url = [NSURL URLWithString:@"http://10.20.70.24:8888/kpyx-logical-service/cg1101/cg110101/index"];
#endif
#ifdef KPYX_QATwo
                    NSURL *url = [NSURL URLWithString:@"http://cardgame.artist-mobile.com:8080/kpyx-logical-service/cg1101/cg110101/index"];
#endif
#ifdef KPYX_QAThree
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg1101/cg110101/index"];
#endif
#ifdef KPYX_QAFour
                    NSURL *url = [NSURL URLWithString:@"http://cardtest.artist-mobile.com:8080/kpyx-logical-service/cg1101/cg110101/index"];
#endif
                    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
                    [self setWebViewHeadWithRequest:request];
                    [viewController.myWebView loadRequest:request];
                }
            }
            [button setSelected:YES];
        }else{
            [button setSelected:NO];
        }
    }
    menuView.hidden = YES;
    setView.hidden = YES;
    [self.setView.textFieldDuiJiang resignFirstResponder];
}



- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    viewController.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d",80];
}



#pragma mark - SetButton

- (void)noGoBack:(id)sender
{
    self.buttonBack.enabled = NO;
    
}

- (void)canGoBack:(id)sender
{
    self.buttonBack.enabled = YES;
    
}

- (void)setButtonState:(int)tag
{
    
    
    if(tag != 104)
    {
        
        for(UIButton *button in buttonArray){
            if(button.tag == tag){
            }else{
                [button setSelected:NO];
                
            }
        }
    }
}


- (void)unreadMessageCountChange:(id)sender
{
    
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    if([[user objectForKey:USER_KEY_UNREAD_COUNT] integerValue] != 0){
        unreadlabel.hidden = NO;
        unreadButton.hidden = NO;
        NSInteger count = [[user objectForKey:USER_KEY_UNREAD_COUNT] integerValue];
        if (count<10) {
            unreadlabel.text = [NSString stringWithFormat:@"%d",count];
            unreadButton.frame = CGRectMake(299, 38, 18, 15);
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_1.png"] forState:UIControlStateNormal];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_1.png"] forState :UIControlStateSelected];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_1.png"] forState :UIControlStateHighlighted];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_1.png"] forState :UIControlStateDisabled];
        }else if(count>= 10 && count<100){
            unreadButton.frame = CGRectMake(297, 38, 22, 15);
            unreadlabel.text = [NSString stringWithFormat:@"%d",count];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_2.png"] forState:UIControlStateNormal];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_2.png"] forState :UIControlStateSelected];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_2.png"] forState :UIControlStateHighlighted];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_2.png"] forState :UIControlStateDisabled];
        }else if(count>= 100){
            unreadButton.frame = CGRectMake(295, 38, 25, 15);
            unreadlabel.text = [NSString stringWithFormat:@"%d",count];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_3.png"] forState:UIControlStateNormal];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_3.png"] forState :UIControlStateSelected];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_3.png"] forState :UIControlStateHighlighted];
            [unreadButton setBackgroundImage:[UIImage imageNamed:@"number_bg_3.png"] forState :UIControlStateDisabled];
        }
        

    }else{
        unreadlabel.hidden = YES;
        unreadButton.hidden = YES;
        NSInteger count = [[user objectForKey:USER_KEY_UNREAD_COUNT] integerValue];
        unreadlabel.text = [NSString stringWithFormat:@"%d",count];
    }
}

- (void)actionEnergyCountChange:(id)sender
{
   // NSLog(@"actionView.subviews count %d",[actionView.subviews count]);
  
    if ([actionView.subviews count]) {
        
    
    for(int i = ([actionView.subviews count]-1);i >= 0;i--){
        [[ actionView.subviews objectAtIndex:i] removeFromSuperview];
    }
    }
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_ACTION_COUNT] integerValue];
    actionNow = [[user objectForKey:USER_KEY_ACTION_COUNT] integerValue];
   
    actionSum = [[user objectForKey:USER_KEY_ACTIONMAX_COUNT] integerValue];
 
    resume = [[user objectForKey:USER_KEY_RESUME_COUNT] integerValue];
    [user setBool:NO forKey:@"actionEnergyMaxBOOL"];
    [user setBool:NO forKey:@"actionEnergyBOOL"];
    //NSLog(@"xiyangyang%d%d",count,actionSum);
    [blueprogressBar setMaxProgressValue:actionSum];
    [blueprogressBar setProgress:count];
    NSLog(@"actionSum  ssssssssssssssss%d%d",actionSum,count);
    NSMutableArray *picArray = [self getNumberPicture:count];
    for (int i = 0; i<[picArray count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
        image1.frame = CGRectMake((i*8), 9, 8, 9);
        [actionView addSubview:image1];
    }
    actionNumLabel.text = @"         /";
    //NSLog(@"actionSum %d",actionSum);
    NSMutableArray *picArray2 = [self getNumberPicture:actionSum];
    for (int i = 0; i<[picArray2 count]; i++) {
        UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray2 objectAtIndex:i]]];
        image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
        [actionView addSubview:image2];
    }
//    if (actionSum) {
//        NSTimeInterval time2Interval = 60;
//        NSTimer *addTimer = [NSTimer scheduledTimerWithTimeInterval:time2Interval target:self selector:@selector(addAnyPower:) userInfo:nil repeats:YES];
//        [addTimer fire];
//    }
    [self.headView bringSubviewToFront:actionAdd];
    
   
    
}
- (void)fightingEnergyCountChange:(id)sender
{
    if ([fightView.subviews count]) {
    for(int i = ([fightView.subviews count]-1);i >= 0;i--){
        [[ fightView.subviews objectAtIndex:i] removeFromSuperview];
    }
    }
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_FIGHT_COUNT] integerValue];
    fightSum = [[user objectForKey:USER_KEY_FIGHTMAX_COUNT] integerValue];
    [redprogressBar setMaxProgressValue:fightSum];
    [redprogressBar setProgress:count];

    [user setBool:NO forKey:@"fightingEnergyMaxBOOL"];
    [user setBool:NO forKey:@"fightingEnergyBOOL"];
    NSLog(@"fightSum  ssssssssssssssss%d%d",fightSum,count);
    //    fightNumLabel.text = [NSString stringWithFormat:@"%d  /  %d",count,fightSum];
    NSMutableArray *picArray = [self getNumberPicture:count];
    for (int i = 0; i<[picArray count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
        image1.frame = CGRectMake(0+(i*8), 9, 8, 9);
        [fightView addSubview:image1];
    }
    fightNumLabel.text = @"        /";
    //NSLog(@"actionSum %d",actionSum);
    NSMutableArray *picArray2 = [self getNumberPicture:fightSum];
    for (int i = 0; i<[picArray2 count]; i++) {
        UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray2 objectAtIndex:i]]];
        image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
        [fightView addSubview:image2];
    }
    [self.headView bringSubviewToFront:fightAdd];
    
}

- (void)shieldEnergyCountChange:(id)sender
{
    if ([shileView.subviews count]){
    for(int i = ([shileView.subviews count]-1);i >= 0;i--){
        [[ shileView.subviews objectAtIndex:i] removeFromSuperview];
    }
    }
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_SHIELD_COUNT] integerValue];
    shiledSum = [[user objectForKey:USER_KEY_SHILEDMAX_COUNT] integerValue];
    [yellowprogressBar setMaxProgressValue:shiledSum];
    [yellowprogressBar setProgress:count];
    
    [user setBool:NO forKey:@"shieldEnergyMaxBOOL"];
    [user setBool:NO forKey:@"shieldEnergyBOOL"];
    NSLog(@"shileSum  ssssssssssssssss%d%d",shiledSum,count);
    //    shiledNumLabel.text = [NSString stringWithFormat:@"%d  /  %d",count,shiledSum];
    NSMutableArray *picArray = [self getNumberPicture:count];
    for (int i = 0; i<[picArray count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
        image1.frame = CGRectMake(0+(i*8), 9, 8, 9);
        [shileView addSubview:image1];
    }
    shiledNumLabel.text = @"        /";
    //NSLog(@"actionSum %d",actionSum);
    NSMutableArray *picArray2 = [self getNumberPicture:shiledSum];
    for (int i = 0; i<[picArray2 count]; i++) {
        UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray2 objectAtIndex:i]]];
        image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
        [shileView addSubview:image2];
    }
    [self.headView bringSubviewToFront:shildAdd];
}

- (void)levelCountChange:(id)sender
{
    if ([levelView.subviews count]>0) {
        
        for(int i = ([levelView.subviews count]-1);i >= 0;i--){
            [[ levelView.subviews objectAtIndex:i] removeFromSuperview];
        }
    }
    
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_LEVEL_COUNT] integerValue];
    
    
    NSMutableArray *picArray = [self getNumberBluePicture:count];
    for (int i = 0; i<[picArray count]; i++) {
        if ([picArray count]==1) {
            UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
            image1.frame = CGRectMake(12+(i*8), 0, 8, 12);
            [levelView addSubview:image1];
        }else if([picArray count]==2){
            UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
            image1.frame = CGRectMake(6+(i*8), 0, 8, 12);
            [levelView addSubview:image1];
        }else if([picArray count]==3){
            UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
            image1.frame = CGRectMake(2+(i*8), 0, 8, 12);
            [levelView addSubview:image1];
        }
        
    }
    //levelLabel.text = [NSString stringWithFormat:@"%d",count];
}

- (void)expPercentCountChange:(id)sender
{
    
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_EXP_COUNT] integerValue];
    [levelprogressBar setProgress:count];
}

- (void)vipLevelCountChange:(id)sender
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_VIPLEVEL_COUNT] integerValue];
//    if (count > 0) {
//        vieLabel.text = [NSString stringWithFormat:@"VIP %d",count];
//        
//    }
    if (count >= 0 && count <= 12) {
        
    
    UIImage *image = [UIImage imageNamed:[levelArray objectAtIndex:count]];
    [vipLevel setImage:image];
    }
    
}

- (void)crystalNumCountChange:(id)sender
{
    if ([crystalView.subviews count] > 0) {
        //NSLog(@"%d",[crystalView.subviews count]);
    for(int i = ([crystalView.subviews count]-1);i >= 0;i--){
        [[ crystalView.subviews objectAtIndex:i] removeFromSuperview];
    }
    }
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_CRYSTAL_COUNT] integerValue];
    NSMutableArray *picArray = [self getNumberBluePicture:count];
    for (int i = 0; i<[picArray count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:[picArray count]-1-i]]];
        image1.frame = CGRectMake(63-(i*9), 0, 9, 12);
        [crystalView addSubview:image1];
    }
    //    crystalNumLabel.text = [NSString stringWithFormat:@"%d",count];
}

- (void)diamondsNumCountChange:(id)sender
{
    if ([dimondsView.subviews count]>0) {
  
    for(int i = ([dimondsView.subviews count]-1);i >= 0;i--){
        [[ dimondsView.subviews objectAtIndex:i] removeFromSuperview];
    }
    }
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger count = [[user objectForKey:USER_KEY_DIAMONDS_COUNT] integerValue];
    NSMutableArray *picArray = [self getNumberBluePicture:count];
    for (int i = 0; i<[picArray count]; i++) {
        UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
        image1.frame = CGRectMake(0+(i*9), 0, 9, 12);
        [dimondsView addSubview:image1];
    }
    //    dimondsNumLabel.text = [NSString stringWithFormat:@"%d",count];
}

-(void)worldMessageChange:(id)sender
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSString *newTips = [user objectForKey:USER_KEY_WORLDNEWS_COUNT];
    tipChange = [NSString stringWithFormat:@"%@",newTips];
//    if (newTips.length > 0) {
//    tiplabel.label1.text = newTips;
//    }
    
}

-(void)addPowerChange:(id)sender
{
    [baseAlert dismissWithClickedButtonIndex:0 animated:NO];
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSInteger power = [[user objectForKey:USER_KEY_ENERGY_COUNT] intValue];
    NSInteger dimondsRemain = [[user objectForKey:USER_KEY_DIAMONDSREMAIN] intValue];
    actionNow = power;
    NSString *message = [user objectForKey:USER_KEY_MESSAGE];
    BOOL isSuccess = [[user objectForKey:USER_KEY_SUCCESS_COUNT] intValue];
    if (isSuccess == 1) {
        if ([dimondsView.subviews count]) {
            for(int i = ([dimondsView.subviews count]-1);i >= 0;i--){
                [[ dimondsView.subviews objectAtIndex:i] removeFromSuperview];
            }
        }
         NSMutableArray *dimondsArray = [self getNumberPicture:dimondsRemain];
         for (int i = 0; i<[dimondsArray count]; i++) {
             UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[dimondsArray objectAtIndex:i]]];
             image1.frame = CGRectMake(0+(i*9), 0, 9, 12);
             [dimondsView addSubview:image1];
         }
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"成功" message:@"购买成功" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        switch (tagnum) {
            case 204:{
                if ([actionView.subviews count]) {
                 
                for(int i = ([actionView.subviews count]-1);i >= 0;i--){
                    [[ actionView.subviews objectAtIndex:i] removeFromSuperview];
                }
                }
                NSMutableArray *picArray = [self getNumberPicture:power];
                for (int i = 0; i<[picArray count]; i++) {
                    UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
                    image1.frame = CGRectMake(0+(i*8), 9, 8, 9);
                    [actionView addSubview:image1];
                }
                actionNumLabel.text = @"         /";
               // NSLog(@"actionSum %d",actionSum);
                NSMutableArray *picArray2 = [self getNumberPicture:actionSum];
                for (int i = 0; i<[picArray2 count]; i++) {
                    UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray2 objectAtIndex:i]]];
                    image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
                    [actionView addSubview:image2];
                }
                [self.headView bringSubviewToFront:actionAdd];
                
                [blueprogressBar setProgress:power];
                break;
            }
            case 205:{
                if ([fightView.subviews count]) {
                
                for(int i = ([fightView.subviews count]-1);i >= 0;i--){
                    [[ fightView.subviews objectAtIndex:i] removeFromSuperview];
                }
                }
                NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
                NSInteger count = [[user objectForKey:USER_KEY_FIGHT_COUNT] integerValue];
                fightSum = [[user objectForKey:USER_KEY_FIGHTMAX_COUNT] integerValue];
                [redprogressBar setMaxProgressValue:fightSum];
                [redprogressBar setProgress:count];
                //    fightNumLabel.text = [NSString stringWithFormat:@"%d  /  %d",count,fightSum];
                NSMutableArray *picArray = [self getNumberPicture:power];
                for (int i = 0; i<[picArray count]; i++) {
                    UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
                    image1.frame = CGRectMake(0+(i*8), 9, 8, 9);
                    [fightView addSubview:image1];
                }
                fightNumLabel.text = @"        /";
               // NSLog(@"actionSum %d",actionSum);
                NSMutableArray *picArray2 = [self getNumberPicture:fightSum];
                for (int i = 0; i<[picArray2 count]; i++) {
                    UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray2 objectAtIndex:i]]];
                    image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
                    [fightView addSubview:image2];
                }
                [self.headView bringSubviewToFront:fightAdd];
                [redprogressBar setProgress:power];
                break;
            }
            case 206:{
                if ([shileView.subviews count]) {
               
                for(int i = ([shileView.subviews count]-1);i >= 0;i--){
                    [[ shileView.subviews objectAtIndex:i] removeFromSuperview];
                }
                }
                NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
                shiledSum = [[user objectForKey:USER_KEY_SHILEDMAX_COUNT] integerValue];
                //    shiledNumLabel.text = [NSString stringWithFormat:@"%d  /  %d",count,shiledSum];
                NSMutableArray *picArray = [self getNumberPicture:power];
                for (int i = 0; i<[picArray count]; i++) {
                    UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray objectAtIndex:i]]];
                    image1.frame = CGRectMake(0+(i*8), 9, 8, 9);
                    [shileView addSubview:image1];
                }
                shiledNumLabel.text = @"        /";
                //NSLog(@"actionSum %d",actionSum);
                NSMutableArray *picArray2 = [self getNumberPicture:shiledSum];
                for (int i = 0; i<[picArray2 count]; i++) {
                    UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[picArray2 objectAtIndex:i]]];
                    image2.frame = CGRectMake(28+(i*8), 9, 8, 9);
                    [shileView addSubview:image2];
                }
                [self.headView bringSubviewToFront:shildAdd];
                [yellowprogressBar setProgress:power];
                break;
            }
            default:
                break;
                
        }
    }else
    {
        if (isAlert == 1) {
            
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"失败" message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
            isAlert = 0;
        }
    }
}

- (void)setButtonsEnabled
{
    for(UIButton *button in buttonArray)
    {
        if(button.tag == 101){
        }else{
            button.enabled = !button.enabled;
        }
    }
}

- (void)setWebViewHeadWithRequest:(NSMutableURLRequest *)request
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [request addValue:[user objectForKey:USER_KEY_IMEI] forHTTPHeaderField:@"imei"];
    NSLog(@"USER_KEY_SOURCE_IDUSER_KEY_SOURCEE_ID   out");
    if([user objectForKey:USER_KEY_SOURCE_ID] != nil){
        NSLog(@"USER_KEY_SOURCE_IDUSER_KEY_SOURCE_ID  in  %@",[user objectForKey:USER_KEY_SOURCE_ID]);
        [request addValue:[user objectForKey:USER_KEY_SOURCE_ID] forHTTPHeaderField:@"source_id"];
    }
    [request addValue:@"ios" forHTTPHeaderField:@"client_type"];
    if([user valueForKey:USER_KEY_DEVICETOKEN] != nil){
        NSString *deviceTokenString = [user valueForKey:USER_KEY_DEVICETOKEN];
        [request addValue:deviceTokenString forHTTPHeaderField:@"device_token"];
    }
}

#pragma mark - Music
- (void)tapButtonMisic
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setBool:YES forKey:USER_KEY_BUTTON_MUSIC];
    [user synchronize];
    if([[user objectForKey:USER_KEY_MUSIC] boolValue] == YES){
        [self playSystemSound:nil];
    }else{
        NSLog(@"music is no!");
    }
}

- (void)tapHomeMusic
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playHomeMusic"  object:self userInfo:nil];
}

-(void)tapJuqingMusic
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playjuqingHomeMusic"  object:self userInfo:nil];
}
- (IBAction) playSystemSound: (id) sender {
    
    AudioServicesPlaySystemSound (soundFileObject);
}

- (IBAction) playAlertSound: (id) sender {
    
    AudioServicesPlayAlertSound (soundFileObject);
}

#pragma mark - Animation
- (void)startAnimationsWithHiddenFootAndHead
{
    [self pauseTimer];
    [tiplabel pause];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:3];
    if(IsiPhone5)
    {
        headView.frame = CGRectMake(0, 0 - self.tabBar.frame.size.height-32, self.tabBar.frame.size.width, self.tabBar.frame.size.height+31);
        
        footView.frame = CGRectMake(0, 515 + self.tabBar.frame.size.height+20, self.tabBar.frame.size.width, self.tabBar.frame.size.height-4);
        
    }else{
        headView.frame = CGRectMake(0, 0 - self.tabBar.frame.size.height-32, self.tabBar.frame.size.width, self.tabBar.frame.size.height+31);
        
        footView.frame = CGRectMake(0, 432 + self.tabBar.frame.size.height+20, self.tabBar.frame.size.width, self.tabBar.frame.size.height-4);
        
    }
    [UIView commitAnimations];
}

- (void)startAnimationsWithNOHiddenFootAndHead
{
    //[[UIScreen mainScreen] setBrightness:0.75];
    [self reStartTimer];
    [tiplabel reStart];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:3];
    if(IsiPhone5)
    {
        headView.frame = CGRectMake(0, 0, self.tabBar.frame.size.width, self.tabBar.frame.size.height+31);
        
        footView.frame = CGRectMake(0, 519, self.tabBar.frame.size.width + 15, self.tabBar.frame.size.height-4);
        
    }else{
        headView.frame = CGRectMake(0, 0, self.tabBar.frame.size.width, self.tabBar.frame.size.height+31);
        
        footView.frame = CGRectMake(0, 432, self.tabBar.frame.size.width +15, self.tabBar.frame.size.height-4);
        
    }
    [UIView commitAnimations];
}
#pragma mark - UC
- (void)logout: (NSNotification *) notification
{
    [[UIApplication sharedApplication] performSelector:@selector(terminateWithSuccess)];
    
    //    [[NSNotificationCenter defaultCenter] removeObserver:self
    //                                                    name:UCG_SDK_MSG_USER_CENTER_EXIT
    //                                                  object:nil];
    //    [[NSNotificationCenter defaultCenter] removeObserver:self
    //                                                    name:UCG_SDK_MSG_LOGOUT
    //                                                  object:nil];
    //
    //    [[NSNotificationCenter defaultCenter] addObserver:self
    //                                             selector:@selector(onLoginFin:)
    //                                                 name:UCG_SDK_MSG_LOGIN_FIN
    //                                               object:nil];
    //    [[NSNotificationCenter defaultCenter] addObserver:self
    //                                             selector:@selector(onUnloginExit)
    //                                                 name:UCG_SDK_MSG_EXIT_WITHOUT_LOGIN
    //                                               object:nil];
}
-(void)addTimer{
    NSTimeInterval timeInterval = KSrollTime;
    showTimer = [NSTimer scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(handleMaxShowTimer:) userInfo:nil repeats:YES];
    //[[NSRunLoop currentRunLoop] addTimer:showTimer forMode:NSRunLoopCommonModes];
    [showTimer fire];
}

-(void)pauseTimer
{
    if (self.showTimer) {
        [self.showTimer invalidate];
        self.showTimer = nil;
    }else{
        return;
    }
}

-(void)reStartTimer
{
    if ([self.showTimer isValid]) {
        return;
    }
    [self addTimer];
}
#pragma mark - common action
- (NSString *) getRandomTips
{
    int numRandon = arc4random()%63;
    NSString *tips = [tipsArray objectAtIndex:numRandon];
    return tips;
}

-(NSMutableArray *) getNumberPicture:(NSInteger)count
{
    NSMutableArray *numShow = [[NSMutableArray alloc] init];
    NSString *str = [NSString stringWithFormat:@"%d",count];
    for (int i = 0;i<[str length] ; i++) {
        int record = [[str substringWithRange:NSMakeRange(i, 1)] intValue];
        [numShow addObject:[numsArray objectAtIndex:record]];
    }
    return numShow;
}
-(NSMutableArray *) getNumberBluePicture:(NSInteger)count
{
    NSMutableArray *numShow = [[NSMutableArray alloc] init];
    NSString *str = [NSString stringWithFormat:@"%d",count];
    for (int i = 0;i<[str length] ; i++) {
        int record = [[str substringWithRange:NSMakeRange(i, 1)] intValue];
        [numShow addObject:[numsBlueArray objectAtIndex:record]];
    }
    return numShow;
}


@end
