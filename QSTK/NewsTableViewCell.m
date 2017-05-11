//
//  NewsTableViewCell.m
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "NewsTableViewCell.h"

@implementation NewsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    self.contentView.layer.borderColor = [UIColor colorWithRed:0.9490 green:0.9490 blue:0.9490 alpha:0.5].CGColor;
    
    self.contentView.layer.borderWidth = 1;
    
    self.contentView.layer.masksToBounds = NO;
    
    self.contentView.layer.shadowColor = [UIColor whiteColor].CGColor;
    
    self.contentView.layer.shadowOpacity = 0.75;
    
    self.contentView.layer.shadowRadius = 2;
    
    self.contentView.layer.shadowOffset = CGSizeMake(0, 1);
    
    self.contentView.layer.shadowPath = [[UIBezierPath bezierPathWithRect:self.contentView.bounds] CGPath];
    
    self.contentView.layer.rasterizationScale = [[UIScreen mainScreen] scale];
    
    self.contentView.layer.shouldRasterize = YES;

    [[self.dateContainerView layer] setCornerRadius:22];
    
    [[self.dateContainerView layer] setMasksToBounds:YES];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
