//
//  YYImgsViewController.h
//  YYPaint
//
//  Created by Apple on 2018/10/10.
//  Copyright © 2018年 ༺ོ࿆强ོ࿆ ༻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Draw.h"
@protocol YYImgsViewControllerDelegate <NSObject>
- (void)didSelectDraw:(Draw *)draw;
@end
@interface YYImgsViewController : UIViewController
@property (assign,nonatomic) id<YYImgsViewControllerDelegate> delegate;
@end
