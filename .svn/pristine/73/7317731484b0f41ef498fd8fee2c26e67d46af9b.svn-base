//
//  ProgressViewController.h
//  KPYXProject
//
//  Created by hoperun ccas on 13-4-18.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DownLoadZipClass.h"
#import "CustomTabBarController.h"
#import "DownloadZipWithAFNetWorkClass.h"
@interface ProgressViewController : UIViewController<DownLoadImageWithAFDelegate>
@property (nonatomic, strong) IBOutlet UIProgressView *progress;
@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet UILabel *detailedLabel;

@property (nonatomic, strong) IBOutlet UIButton *cancelButton;
@property (nonatomic, strong) IBOutlet UIButton *nowUpdateButton;
@property (nonatomic, strong) IBOutlet UIButton *laterUpdateButton;


@property (nonatomic, strong) NSMutableArray *arrayImage;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, strong) DownloadZipWithAFNetWorkClass *down;

@property (nonatomic, strong) IBOutlet UIView *prepareToDownLoadView;
@property (nonatomic, strong) IBOutlet UIView *downLoadView;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activeView;
@property (nonatomic, strong) NSMutableArray *downLoadURLArray;

- (IBAction)cancelButtonAction:(id)sender;
- (IBAction)nowUpdateButtonAction:(id)sender;
- (IBAction)laterUpdateButtonAction:(id)sender;
- (void)levelCountChange2:(id)sender;


@end
