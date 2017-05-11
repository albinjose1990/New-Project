//
//  HomeViewController.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "HomeViewController.h"
#import "Protocol.h"
#import "AppDelegate.h"
#import "constants.h"
#import "HomeButtonView.h"
#import "AboutViewController.h"
#import "RidesViewController.h"
#import "PhotoViewController.h"
#import "MediaViewController.h"
#import "FindUSViewController.h"
#import "ResultViewController.h"
#import "StandingViewController.h"
#import "RoundsViewController.h"
#import "NewsViewController.h"

@interface HomeViewController ()<cellpass>
{
    float originX,originY;
}

@end

@implementation HomeViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self createButtonView];
    
}



-(void)createButtonView
{
    
    originX = 20;
    
    originY = self.topImageView.frame.size.height + self.topImageView.frame.origin.y+20;
    
    float width = (SCREEN_WIDTH - (2 * originX)) / 3;
    
    for(int i = 1;i <= 9;i++)
    {
        HomeButtonView *homeButton = (HomeButtonView *)[[[NSBundle mainBundle] loadNibNamed:@"HomeButtonView" owner:nil options:nil] objectAtIndex:0];
        
        [homeButton setFrame:CGRectMake( originX, originY, width, 120)];
        
        [self.scrollView addSubview:homeButton];
        
        homeButton.parent = self;
        
        homeButton.tag = i - 1;
        
        if(i > 0 && (i % 3 == 0))
        {
            originY += 130;
            
            originX = 20;
        }
        else
        {
            originX += (width);
        }
        
        [homeButton setImageAtIndex:i];
        
        [homeButton setTittleAtIndex:i];
    }
    
    originY += 120;
    
    [self.scrollView setContentSize:CGSizeMake( 0, originY+30)];
    
    [UIView animateWithDuration:0.35 animations:^{
        [self.scrollView setAlpha:1.0];
    }];

    
    
}

- (void)VideoSelectedWithIndex:(int)index
{
    [[AppDelegate sharedAppDelegate] startActivityIndicator];
    
    if (index == 0)
    {
        AboutViewController *aboutView = [[AboutViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:aboutView afterDelay:.36];
        
    }
    
    if (index == 1)
    {
        RoundsViewController *roundsView = [[RoundsViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:roundsView afterDelay:.36];
        
    }
    
    if (index == 2)
    {
        ResultViewController *resultView = [[ResultViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:resultView afterDelay:.36];
    }
    
    else if (index == 3)
    {
        RidesViewController *ridersView = [[RidesViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:ridersView afterDelay:.36];
        
    }
    
    else if (index == 4)
    {
        StandingViewController *standingView = [[StandingViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:standingView afterDelay:.36];
        
    }
    
    else if (index == 5)
    {
        FindUSViewController *findUSView = [[FindUSViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:findUSView afterDelay:.36];
        
    }
    
    else if (index == 6)
    {
        NewsViewController *newsView = [[NewsViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:newsView afterDelay:.36];
        
    }

    else if (index == 7)
    {
        PhotoViewController *photoView = [[PhotoViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:photoView afterDelay:.36];;
        
    }
    
    else if (index == 8)
    {
        MediaViewController *videoView = [[MediaViewController alloc] init];
        
        [self performSelector:@selector(NavigateTo:) withObject:videoView afterDelay:.36];;
        
    }
    
   // [[AppDelegate sharedAppDelegate] stopActivityIndicator];

    
}

-(void)NavigateTo:(UIViewController *) Vc
{
    [self.navigationController pushViewController:Vc animated:YES];
    
    [[AppDelegate sharedAppDelegate] stopActivityIndicator];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
