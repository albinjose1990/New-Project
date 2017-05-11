//
//  HomeButtonView.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "HomeButtonView.h"
#import "HomeViewController.h"
@implementation HomeButtonView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)selectionButtonAction:(UIButton *)sender
{
    
    self.index =(int) self.tag;
    
    [self.parent VideoSelectedWithIndex:self.index];
    
}

-(void)setImageAtIndex:(int)index
{
    
    if (index == 1)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_1"]];
    }
    
    else if (index == 2)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_2"]];
    }
    
    else if (index == 3)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_3"]];
    }
    
    else if (index == 4)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_4"]];
    }
    
    else if (index == 5)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_5"]];
    }
    
    else if (index == 6)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_6"]];
    }
    
    else if (index == 7)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_7"]];
    }
    
    else if (index == 8)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_8"]];
    }
    
    else if (index == 9)
    {
        [self.buttonImageView setImage:[UIImage imageNamed:@"Home_9"]];
    }
    
    
}

-(void)setTittleAtIndex:(int)index
{
    
    if (index == 1)
    {
        self.tittleLbl.text = @"About QSTK";
    }
    
    else if (index == 2)
    {
        self.tittleLbl.text = @"Rounds";
    }
    
    else if (index == 3)
    {
        self.tittleLbl.text = @"Results";
    }

    else if (index == 4)
    {
        self.tittleLbl.text = @"Riders";
    }

    else if (index == 5)
    {
        self.tittleLbl.text = @"Standings";
    }

    else if (index == 6)
    {
        self.tittleLbl.text = @"Find Us";
    }

    else if (index == 7)
    {
        self.tittleLbl.text = @"News";
    }

    else if (index == 8)
    {
        self.tittleLbl.text = @"Photos";
    }

    else
    {

        self.tittleLbl.text = @"Videos";
    }

    
}
@end
