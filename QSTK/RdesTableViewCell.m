//
//  RdesTableViewCell.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "RdesTableViewCell.h"

@implementation RdesTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setUi];
    
    

    // Initialization code
}

-(void)setUi
{
    [[self.profileImageContainerView layer] setCornerRadius:30];
    
    [[self.profileImageContainerView layer] setMasksToBounds:YES];
    
    [[self.badgeView layer] setCornerRadius:11];
    
    [[self.badgeView layer] setMasksToBounds:YES];
    
    [[self.profileView layer] setCornerRadius:4];
    
    [[self.profileView layer] setMasksToBounds:YES];
    
    [[self.detailView layer] setCornerRadius:4];
    
    [[self.detailView layer] setMasksToBounds:YES];
    
    //[self.profileImgView setImage:[UIImage imageNamed:@"Rider_1.jpg"]];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
