//
//  customMsgBox.m
//  NdCP_Game_Demo
//
//  Created by  hiyo on 12-7-18.
//  Copyright 2012 Nd. All rights reserved.
//

#import "customMsgBox.h"


@interface customMsgBox()
- (void)doNext;
- (void)initSubViews:(id)msgBox title:(NSString *)t body:(NSString *)b;
@end


@implementation customMsgBox
@synthesize nDelegate;


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}

+ (void)msgBoxWithTitle:(NSString *)title body:(NSString *)body delegate:(id)del nTag:(int)nTag
{	
	customMsgBox *v = [[[customMsgBox alloc] initWithFrame:CGRectMake(0, 0, 320, 480)] autorelease];
	v.nDelegate = del;
	v.tag = nTag;
	
	[v initSubViews:v title:title body:body];
	
//	UIViewController *ctrl = (UIViewController *)del;
//	[ctrl.view addSubview:v];
	
	UIView *top = [[[[[UIApplication sharedApplication] windows] objectAtIndex:0] subviews] objectAtIndex:0];
	[top addSubview:v];
}

- (void)dealloc {
	self.nDelegate = nil;
    [super dealloc];
}

- (void)initSubViews:(id)msgBox title:(NSString *)t body:(NSString *)b
{
	customMsgBox *v = (customMsgBox *)msgBox;
	v.backgroundColor = [UIColor whiteColor];
	//custom
	UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
	lab.textAlignment = UITextAlignmentCenter;
	lab.text = t;
	[v addSubview:lab];
	
	UITextView *tv = [[UITextView alloc] initWithFrame:CGRectMake(0, 40, 320, 200)];
	tv.text = b;
	tv.font = [UIFont systemFontOfSize:13];
	tv.editable = NO;
	[v addSubview:tv];
	
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn.frame = CGRectMake(190, 250, 100, 40);
	[btn setTitle:@"确定" forState:UIControlStateNormal];
	[btn addTarget:self action:@selector(doNext) forControlEvents:UIControlEventTouchUpInside];
	[v addSubview:btn];
}

- (void)doNext
{
	if ([nDelegate respondsToSelector:@selector(okPressed:)]) {
		[nDelegate okPressed:self.tag];
	}
	[self removeFromSuperview];
}

@end
