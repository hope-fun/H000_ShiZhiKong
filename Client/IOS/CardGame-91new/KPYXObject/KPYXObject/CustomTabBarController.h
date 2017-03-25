//
//  CustomTabBarController.h
//  KPYXObject
//
//  Created by qian on 3/24/13.
//  Copyright (c) 2013 abing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomWebViewController.h"
#import "MenuView.h"
#import "SettingView.h"
#import "ROllLabel.h"
#import "ADVPercentProgressBar.h"
@class SettingView;
@interface CustomTabBarController : UITabBarController<UITabBarControllerDelegate,UIAlertViewDelegate>
{

    CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
    UIView                   * _view1;
    UIView                   * _view2;
    BOOL                     _rotate;

}

@property (nonatomic, strong) IBOutlet UIButton *buttonMenu;
@property (nonatomic, strong) IBOutlet UIButton *buttonHall;
@property (nonatomic, strong) IBOutlet UIButton *buttonPackge;
@property (nonatomic, strong) IBOutlet UIButton *buttonBack;
@property (nonatomic, strong) IBOutlet UIButton *buttonHome;
@property (nonatomic, strong) IBOutlet UIButton *buttonTask;
@property (nonatomic, strong) IBOutlet UIButton *buttonFight;
@property (nonatomic, strong) IBOutlet UIButton *buttonStrengthen;
@property (nonatomic, strong) IBOutlet UIButton *buttonEvolution;
@property (nonatomic, strong) IBOutlet UIButton *unreadButton;
@property (nonatomic, strong) IBOutlet UIButton *redButton;
@property (nonatomic, strong) IBOutlet UIButton *blueButton;
@property (nonatomic, strong) IBOutlet UIButton *greedButton;
@property (nonatomic, strong) IBOutlet UIButton *yellowButon;
@property (nonatomic, strong) IBOutlet UILabel *unreadlabel;
@property (nonatomic, retain) ROllLabel *tiplabel;
@property (nonatomic, retain) ROllLabel *tiplabel2;
@property (nonatomic, strong) ADVPercentProgressBar *blueprogressBar;
@property (nonatomic, strong) ADVPercentProgressBar *redprogressBar;
@property (nonatomic, strong) ADVPercentProgressBar *yellowprogressBar;
@property (nonatomic, strong) ADVPercentProgressBar *levelprogressBar;
@property (nonatomic, strong) IBOutlet UIButton *actionAdd;
@property (nonatomic, strong) IBOutlet UIButton *fightAdd;
@property (nonatomic, strong) IBOutlet UIButton *shildAdd;
@property (nonatomic, strong) IBOutlet UIButton *crystalNumAdd;
@property (nonatomic, strong) IBOutlet UIView *actionView;
@property (nonatomic, strong) IBOutlet UIView *fightView;
@property (nonatomic, strong) IBOutlet UIView *shileView;
@property (nonatomic, strong) IBOutlet UIView *dimondsView;
@property (nonatomic, strong) IBOutlet UIView *crystalView;
@property (nonatomic, strong) IBOutlet UIView *levelView;
@property (nonatomic, strong) IBOutlet UIImageView *vipLevel;
@property (nonatomic, strong) UIAlertView *baseAlert;
@property (nonatomic, strong) IBOutlet UIImageView *fightNumLabelView;
@property (nonatomic, strong) IBOutlet UIImageView *actionNumLabelView;
@property (nonatomic, strong) IBOutlet UIImageView *shileNumLabelView;
@property (nonatomic, strong) UILabel *levelLabel;
@property (nonatomic, strong) UILabel *vieLabel;
@property (nonatomic, strong) UILabel *crystalNumLabel;
@property (nonatomic, strong) UILabel *dimondsNumLabel;
@property (nonatomic, strong) UILabel *actionNumLabel;
@property (nonatomic, strong) UILabel *fightNumLabel;
@property (nonatomic, strong) UILabel *shiledNumLabel;

@property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIView *headView;
@property (nonatomic, strong) NSArray *buttonArray;
@property (nonatomic,assign) NSTimer *showTimer;
@property (assign) int actionSum;
@property (assign) int fightSum;
@property (assign) int shiledSum;
@property (assign) int actionNow;
@property (assign) int fightNow;
@property (assign) int shiledNow;
@property (assign) int resume;
@property (assign) int tagnum;

@property (nonatomic, strong) MenuView *menuView;
@property (nonatomic, strong) SettingView *setView;
@property (nonatomic, strong) IBOutlet UIView *ViewMenu;
@property (nonatomic, assign) BOOL isHidden;


@property (readwrite)	CFURLRef		soundFileURLRef;
@property (readonly)	SystemSoundID	soundFileObject;
-(void) addCustomElements;
- (void)menuButtonPressed:(id)sender;
- (void)buttonClicked:(id)sender;
- (IBAction) playAlertSound: (id) sender;
- (NSString *) getRandomTips;
- (void)buttonAction:(id)sender;

@end
