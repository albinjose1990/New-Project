//
//  VideoView.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "VideoView.h"
#import "MediaViewController.h"

@implementation VideoView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setImageAtIndex:(int)Index
{
    
    [self.videoThambunil setImage:[UIImage imageNamed:@"Video_1.jpg"]];
    
}

- (IBAction)selectionButtonAction:(UIButton *)sender
{
    
    self.index =(int) self.tag;
    
    [self.parent VideoSelectedWithIndex:self.index];

    
}

@end
