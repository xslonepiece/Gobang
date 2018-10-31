//
//  GobangBoard.m
//  Gobang
//
//  Created by sili_xia on 2018/10/31.
//  Copyright © 2018 sili_xia. All rights reserved.
//

#import "GobangBoard.h"
#import "GobangCell.h"

static NSInteger rows = 15;

@interface GobangBoard ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic,weak)IBOutlet UICollectionView *collectionView;
@property (nonatomic,weak)IBOutlet UICollectionViewFlowLayout *layout;
@property (nonatomic,weak)IBOutlet NSLayoutConstraint *collectionHCons;
@property (nonatomic,weak)IBOutlet NSLayoutConstraint *hCons;

@end

@implementation GobangBoard

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setupView];
}

- (void)setupView{
    NSInteger width = (int)self.collectionView.frame.size.width / rows;
    self.collectionHCons.constant = width * rows;
    self.hCons.constant = width * (rows - 1) + 1;
    self.layout.itemSize = CGSizeMake(width, width);
    self.layout.minimumLineSpacing = 0;
    self.layout.minimumInteritemSpacing = 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"gobang_cell_id";
    GobangCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"didSelectItemAtIndexPath:%@",indexPath);
    GobangCell *cell = (GobangCell *)[collectionView cellForItemAtIndexPath:indexPath];
    [cell setPiece:YES];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return rows;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return rows;
}


@end
