//
//  RLSendMoneyCollectionCell.h
//  RedLetter
//
//  Created by Apple on 2018/6/21.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RLSendMoneyCollectionCell : UICollectionViewCell
@property(nonatomic,strong) UIImageView *imageV;
@property (nonatomic,strong) UILabel *titleLabel;
- (void)commentSetting;
@end
