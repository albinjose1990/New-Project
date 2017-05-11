//
//  RoundsCollectionViewCell.m
//  QSTK
//
//  Created by Amr on 5/11/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "RoundsCollectionViewCell.h"

@implementation RoundsCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    // Initialization code
}


-(void)drawCircleLoader
{
    [self.circleLoader drawCircleWithPercent:55
                                   duration:3
                                  lineWidth:4
                                  clockwise:YES
                                    lineCap:kCALineCapRound
                                  fillColor:[UIColor clearColor]
                                strokeColor:[UIColor colorWithRed:0.88 green:0.34 blue:0.34 alpha:1.0]
                             animatedColors:nil];
    
    [self.circleLoader startAnimation];

}

@end
