//
//  TopbarView.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "TopbarView.h"
#import "AppDelegate.h"

@implementation TopbarView
{
    UIViewController *currView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setViewController:(UIViewController*)view
{
    currView=view;
}

- (void)setHeaderTitle:(NSString *)title
{
    [self.navTitle setText:title];
}

-(void)backBtn:(UIButton *)sender
{
    
    [[AppDelegate sharedAppDelegate] popToViewController];
}
@end
