//
//  customMsgBox.h
//  NdCP_Game_Demo
//
//  Created by  hiyo on 12-7-18.
//  Copyright 2012 Nd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customMsgBox : UIView {
	id nDelegate;
}
@property (nonatomic, retain) id nDelegate;

+ (void)msgBoxWithTitle:(NSString *)title body:(NSString *)body delegate:(id)del nTag:(int)nTag;
@end


@protocol MsgBoxDelegate
- (void)okPressed:(int)nTag;
@end