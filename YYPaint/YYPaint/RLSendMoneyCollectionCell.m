//
//  RLSendMoneyCollectionCell.m
//  RedLetter
//
//  Created by Apple on 2018/6/21.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "RLSendMoneyCollectionCell.h"
@interface RLSendMoneyCollectionCell()

@end
@implementation RLSendMoneyCollectionCell

- (void)commentSetting{
    self.imageV = [UIImageView new];
    self.imageV.backgroundColor = [UIColor whiteColor];
    self.imageV.contentMode = UIViewContentModeScaleAspectFill;
    self.imageV.frame = self.bounds;
    self.imageV.layer.masksToBounds = YES;
    [self addSubview:self.imageV];
    
    self.titleLabel = [UILabel new];
    self.titleLabel.font = [UIFont systemFontOfSize:13];
    self.titleLabel.frame = CGRectMake(0, self.bounds.size.height - 35, self.bounds.size.width, 30);
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.titleLabel];
    self.titleLabel.textColor = [UIColor lightGrayColor];
}
@end
