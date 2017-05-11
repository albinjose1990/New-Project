//
//  PhotoViewController.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoView.h"
#import "constants.h"

@interface PhotoViewController ()
{
    CGRect topContainerFrame;
    
    NSDictionary *userList;
    
    float originX,originY;
    
    BOOL isPagination ,isPaginationDone,isFollow,isChangeProfile,isChangeCover,isMainView;
    
    int currentPage;
    
    NSString *urlArg,*follow,*type;
    
    NSData *pngData;

}

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.PhotoArray =[[NSMutableArray alloc] initWithObjects:@"Round_0.jpg",@"Round_1.jpg",@"Round_2.jpg",@"Round_3.jpg",@"Round_4.jpg",@"Round_5.jpg", nil];
    
    [self createInterface];
    // Do any additional setup after loading the view from its nib.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}



-(void)createInterface
{
    originX = 10;
    
    originY =10;
    
    float width = (SCREEN_WIDTH - (4 * originX)) / 3;
    
    
    for(int i = 1;i <= self.PhotoArray.count;i++)
    {
        PhotoView *photoV = (PhotoView *)[[[NSBundle mainBundle] loadNibNamed:@"PhotoView" owner:nil options:nil] objectAtIndex:0];
        

        [photoV setFrame:CGRectMake( originX, originY, width, 120)];
        
        [self.scrollView addSubview:photoV];
    
        photoV.parent = self;
        
        photoV.tag = i - 1;
        
        if(i > 0 && (i % 3 == 0))
        {
            
            originY += 130;
            
            originX = 10;
        }
        else
        {
            originX += (width + 10);
        }
        
        [photoV.PhotoImgView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.PhotoArray objectAtIndex:i-1]]]];
    }
    
    //originY += 50;
    
    [self.scrollView setContentSize:CGSizeMake( 0, originY)];
    
    [UIView animateWithDuration:0.35 animations:^{
        [self.scrollView setAlpha:1.0];
    }];

}
- (void)PhotoSelected:(int)index
{
    _slideImageViewController = [PEARImageSlideViewController new];
    
    NSArray *imageLists = @[
                            [UIImage imageNamed:@"Round_0.jpg"],
                            [UIImage imageNamed:@"Round_1.jpg"],
                            [UIImage imageNamed:@"Round_2.jpg"],
                            [UIImage imageNamed:@"Round_3.jpg"],
                            [UIImage imageNamed:@"Round_4.jpg"],
                            [UIImage imageNamed:@"Round_5.jpg"],
                                                        ].copy;
    

        [_slideImageViewController setImageLists:imageLists];
    
        [_slideImageViewController showAtIndex:index];

       
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
