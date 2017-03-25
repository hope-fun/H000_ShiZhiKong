//
//  SettingView.m
//  KPYXProject
//
//  Created by hoperun ccas on 13-3-28.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "SettingView.h"
#import <NdComPlatform/NdComPlatform.h>

@implementation SettingView
@synthesize buttonEnergy;
@synthesize buttonFaild;
@synthesize buttonStartWar;
@synthesize buttonStartVip;
@synthesize buttonExchange;
@synthesize buttonMusic;
@synthesize textFieldDuiJiang;
@synthesize labelUserID;
- (id)initWithFrame:(CGRect)frame
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SNSLoginResult:) name:(NSString *)kNdCPLoginNotification object:nil];
    self = [super initWithFrame:frame];
    if (self) {
        NSUserDefaults *user =[NSUserDefaults standardUserDefaults];
        labelUserID.text = [user objectForKey:USER_KEY_SOURCE_ID];
        // Initialization code
    }
    return self;
}

#pragma mark - init setting
- (void)initSettingButtonState{
    NSUserDefaults *user =[NSUserDefaults standardUserDefaults];
    BOOL isEnergyFull = [[user objectForKey:PUSH_NOTIFICATION_ENERGY_FULL] boolValue];
    [buttonEnergy setSelected:isEnergyFull];
    
    BOOL isWarFailure = [[user objectForKey:PUSH_NOTIFICATION_WAR_FAILURE] boolValue];
    [buttonFaild setSelected:isWarFailure];
    
    BOOL isWarStart = [[user objectForKey:PUSH_NOTIFICATION_WAR_START] boolValue];
    [buttonStartWar setSelected:isWarStart];
    
    BOOL isVipWarStart = [[user objectForKey:PUSH_NOTIFICATION_VIP_WAR_START] boolValue];
    [buttonStartVip setSelected:isVipWarStart];
    
    BOOL isMusic = [[user objectForKey:USER_KEY_MUSIC] boolValue];
    [buttonMusic setSelected:isMusic];
}


- (IBAction)buttonPressed:(id)sender
{
    UIButton *button = (UIButton *)sender;
    int buttonTag = button.tag;
    [button setSelected:!button.selected];
    BOOL isSelected = [button isSelected];
    switch (buttonTag) {
        case 301:
        {
            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
            [user setValue:[NSNumber numberWithBool:isSelected] forKey:PUSH_NOTIFICATION_ENERGY_FULL];
            [user synchronize];

            NSLog(@"%d",[[user objectForKey:PUSH_NOTIFICATION_ENERGY_FULL] boolValue]);
        }
            break;
        case 302:
        {
            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
            [user setValue:[NSNumber numberWithBool:isSelected] forKey:PUSH_NOTIFICATION_WAR_FAILURE];
            [user synchronize];

        }
            break;
        case 303:
        {
            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
            [user setValue:[NSNumber numberWithBool:isSelected] forKey:PUSH_NOTIFICATION_WAR_START];
            [user synchronize];

        }
            break;
        case 304:
        {
            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
            [user setValue:[NSNumber numberWithBool:isSelected] forKey:PUSH_NOTIFICATION_VIP_WAR_START];
            [user synchronize];

        }
            break;
        case 305:
        {
            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
            [user setValue:[NSNumber numberWithBool:isSelected] forKey:USER_KEY_MUSIC];
            [user synchronize];

            if(isSelected == YES){
                AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
                app.audioPlayer.volume = 0.5;
            }else{
                AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
                app.audioPlayer.volume = 0.0;
            }
            NSLog(@"%d",[[user objectForKey:USER_KEY_MUSIC] boolValue]);
            
        }
            break;
            
        default:
            break;
    }
}



- (IBAction)exchange:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Result"
                        message:@"此兑奖码无效" delegate:self
                        cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (IBAction)ppCenterPressDown{
    [[NdComPlatform defaultPlatform]NdEnterPlatform:0];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.frame = CGRectMake(0, -110, self.frame.size.width, self.frame.size.height);

}// became first responder

// return NO to disallow editing.

// became first responder
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    self.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    return YES;
}
// return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end

// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textFieldDuiJiang resignFirstResponder];
    return YES;
    
}// called when 'return' key pressed. return NO to ignore.


@end
