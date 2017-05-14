//
//  SponsorsViewController.m
//  QSTK
//
//  Created by Amr on 5/14/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "SponsorsViewController.h"
#import "SponsorsView.h"
#import "constants.h"
@interface SponsorsViewController ()
{
     float originX,originY;
}

@end

@implementation SponsorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.imageArray = [[NSMutableArray alloc] initWithObjects:@"Sponsors_0.png",@"Sponsors_1.png",@"Sponsors_2.png",@"Sponsors_3.png",@"Sponsors_4.png",@"Sponsors_5.png",@"Sponsors_6.png", nil];
    
    [self createInterface];
    // Do any additional setup after loading the view from its nib.
}

-(void)createInterface
{
    [self.scrollView setAlpha:0];
    
    originX = 10;
    
    originY =0;
    
    float width = (SCREEN_WIDTH - (2 * originX)-2) / 2;
    
    
    for(int i = 1;i <= self.imageArray.count;i++)
    {
        SponsorsView *sponserV = (SponsorsView *)[[[NSBundle mainBundle] loadNibNamed:@"SponsorsView" owner:nil options:nil] objectAtIndex:0];
        
        
        [sponserV setFrame:CGRectMake( originX, originY, width, width)];
        
        [self.scrollView addSubview:sponserV];
        
        sponserV.parent = self;
        
        sponserV.tag = i - 1;
        
        if(i > 0 && (i % 2 == 0))
        {
            
            originY += (width+2);
            
            originX = 10;
        }
        else
        {
            originX += (width+2);
        }
        
        [sponserV.sponsorIMgView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Sponsors_%d.png",i-1]]];
        
       // [sponserV.PhotoImgView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.PhotoArray objectAtIndex:i-1]]]];
    }
    
    originY += width;
    
    [self.scrollView setContentSize:CGSizeMake( 0, originY+10)];
    
    [UIView animateWithDuration:0.35 animations:^{
        [self.scrollView setAlpha:1.0];
    }];

    
    
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
