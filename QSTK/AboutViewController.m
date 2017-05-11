//
//  AboutViewController.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUi];
    
        // Do any additional setup after loading the view from its nib.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


-(void)setUi
{
    [self.scrollView setContentSize:CGSizeMake(0, self.detailLbl.frame.size.height+30)];

//    [[self.aboutImageView layer] setCornerRadius:8];
//    
//    [[self.aboutImageView layer] setMasksToBounds:YES];
}

-(void)ButtonActions:(id)sender
{
    
    if (sender == self.backBtn)
    
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark------
#pragma mark ScrollView Delegates..
-(void)scrollViewDidScroll:(UIScrollView *)scrollView1
{
    //get refrence of vertical indicator
    UIImageView *verticalIndicator = ((UIImageView *)[self.scrollView.subviews objectAtIndex:(self.scrollView.subviews.count-1)]);
    //set color to vertical indicator
    [verticalIndicator setBackgroundColor:[UIColor redColor]];
    
    
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
