//
//  ViewController.h
//  KPYXObject
//
//  Created by hoperun ccas on 13-3-19.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    buttonMenuType = 101,
    buttonHallType,
    buttonPackgeType,
    buttonBackType,
    buttonHomeType,
    buttonTaskType,
    buttonFightType,
    buttonStrengthenType,
    buttonEvolutionType
    
}buttonType;

@interface ViewController : UIViewController<UIWebViewDelegate>
@property (nonatomic, strong) IBOutlet UIView *buttomView;
@property (nonatomic, strong) IBOutlet UIView *footView;
@property (nonatomic, strong) IBOutlet UIButton *buttonMenu;
@property (nonatomic, strong) IBOutlet UIButton *buttonHall;
@property (nonatomic, strong) IBOutlet UIButton *buttonPackge;
@property (nonatomic, strong) IBOutlet UIButton *buttonBack;
@property (nonatomic, strong) IBOutlet UIButton *buttonHome;
@property (nonatomic, strong) IBOutlet UIButton *buttonTask;
@property (nonatomic, strong) IBOutlet UIButton *buttonFight;
@property (nonatomic, strong) IBOutlet UIButton *buttonStrengthen;
@property (nonatomic, strong) IBOutlet UIButton *buttonEvolution;
@property (nonatomic, strong) IBOutlet UIWebView *gameWebView;
- (IBAction)buttonPressed:(id)sender;
@end
