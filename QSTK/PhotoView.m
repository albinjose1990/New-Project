//
//  PhotoView.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "PhotoView.h"
#import "PhotoViewController.h"

@implementation PhotoView


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
    
    [self.parent PhotoSelected:self.index];
    
    
}

@end
