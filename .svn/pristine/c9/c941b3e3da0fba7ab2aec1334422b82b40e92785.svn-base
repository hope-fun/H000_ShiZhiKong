//
//  MenuView.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-27.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "MenuView.h"

@implementation MenuView
@synthesize buttonSheZhi;
@synthesize buttonZhanJi;
@synthesize buttonShangdian;
@synthesize buttonLianMeng;
@synthesize buttonKaPai;
@synthesize buttonTuJian;
@synthesize buttonKeFu;
@synthesize buttonHeCheng;

@synthesize buttonWuPing;
@synthesize buttonXinXi;
@synthesize buttonPaiMaiHang;
@synthesize buttonVip;
@synthesize buttonBianJi;
@synthesize buttonBangZhu;
@synthesize buttonZhanYou;
@synthesize buttonZhuanShen;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
    }
    return self;
}


#pragma mark - ButtonAction
- (IBAction)buttonPressed:(id)sender
{
    UIButton *button = (UIButton *)sender;
    int buttonTag = button.tag;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"com.ButtonPressed"  object:self userInfo:[NSDictionary dictionaryWithObject:[NSNumber numberWithInt:buttonTag] forKey:@"ButtonTag"]];

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
