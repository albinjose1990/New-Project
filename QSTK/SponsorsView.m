//
//  SponsorsView.m
//  QSTK
//
//  Created by Amr on 5/14/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "SponsorsView.h"
#import "SponsorsViewController.h"
@implementation SponsorsView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    self.backgroundColor = [UIColor whiteColor];
    
    self.layer.borderColor = [UIColor colorWithRed:0.9490 green:0.9490 blue:0.9490 alpha:0.5].CGColor;
    
    self.layer.borderWidth = 1;
    
    self.layer.masksToBounds = NO;
    
    self.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    
    self.layer.shadowOpacity = 0.75;
    
    self.layer.shadowRadius = 1;
    
    self.layer.shadowOffset = CGSizeMake(0, 1);
    
    self.layer.shadowPath = [[UIBezierPath bezierPathWithRect:self.bounds] CGPath];
    
    self.layer.rasterizationScale = [[UIScreen mainScreen] scale];
    
    self.layer.shouldRasterize = YES;
    
}
- (IBAction)selectionButtonAction:(UIButton *)sender
{
    
}
@end
