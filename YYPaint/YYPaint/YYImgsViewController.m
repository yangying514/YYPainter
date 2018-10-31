//
//  YYImgsViewController.m
//  YYPaint
//
//  Created by Apple on 2018/10/10.
//  Copyright © 2018年 ༺ོ࿆强ོ࿆ ༻. All rights reserved.
//

#import "YYImgsViewController.h"
#import "RLSendMoneyCollectionCell.h"
#import <AVOSCloud/AVOSCloud.h>

@interface YYImgsViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UINavigationControllerDelegate>
@property(nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) NSArray *dataArray;
@property (nonatomic,assign) CGFloat itemHeight;
@end

@implementation YYImgsViewController
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.navigationItem.title = @"请闯关";
    self.itemHeight = (self.view.bounds.size.width - 35) / 2;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, self.navigationController.navigationBar.frame.size.height + 20, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor yellowColor];
    [self.collectionView registerClass:RLSendMoneyCollectionCell.class forCellWithReuseIdentifier:@"cell"];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    [self.view addSubview:self.collectionView];
    [self loadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}

- (void)loadData{
    AVQuery *query = [AVQuery queryWithClassName:@"Draw"];
    query.limit = 20;
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        if (error != nil) {
            NSLog(@"%@", error);
        }else{
            self.dataArray = objects;
            [self.collectionView reloadData];
        }
    }];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}

/** cell的内容*/
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RLSendMoneyCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    [cell commentSetting];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

/** 总共多少组*/
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

#pragma mark -- UICollectionViewDelegateFlowLayout
/** 每个cell的尺寸*/
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.itemHeight, self.itemHeight);
}

/** section的margin*/
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 10, 10, 10);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    // 选中 返回
    Draw *d = self.dataArray[indexPath.row];
    [self.delegate didSelectDraw:d];
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
}

@end
