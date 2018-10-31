//
//  GobangCell.m
//  Gobang
//
//  Created by sili_xia on 2018/10/31.
//  Copyright © 2018 sili_xia. All rights reserved.
//

#import "GobangCell.h"

@interface GobangCell ()

@property (nonatomic,weak)IBOutlet UIImageView *imageView;

@end

@implementation GobangCell

- (void)setSelected:(BOOL)selected{
    [super setSelected:selected];
}

- (void)setPiece:(BOOL)isBlack{
    NSString *imageName = isBlack ? @"black" : @"white";
    self.imageView.image = [UIImage imageNamed:imageName];
    self.userInteractionEnabled = NO;
}

//- (BOOL)hasPiece{
//    return !self.imageView.image;
//}
@end
