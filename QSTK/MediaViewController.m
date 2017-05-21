//
//  MediaViewController.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "MediaViewController.h"
#import "VideoView.h"
#import "constants.h"

@interface MediaViewController ()
{
    CGRect topContainerFrame;
    
    NSDictionary *userList;
    
    float originX,originY;
    
    BOOL isPagination ,isPaginationDone,isFollow,isChangeProfile,isChangeCover,isMainView;
    
    int currentPage;
    
    NSString *urlArg,*follow,*type;
    
    NSData *pngData;
    
    UIWebView *videoView;
}

@end

@implementation MediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.videoThambunilArray = [[NSMutableArray alloc] initWithObjects:@"Video_0.jpg",@"Video_1.jpg",@"Video_2.jpg",@"Video_3.jpg",@"Video_4.jpg",@"Video_5.jpg",@"Video_6.jpg",@"Video_7.jpg", nil];
    
    
    self.videoUrlArray = [[NSMutableArray alloc] initWithObjects:@"https://youtu.be/mceqDajEgIU",@"https://youtu.be/81SSOjHE18A",@"https://youtu.be/gcS3pRXmv9I",@"https://youtu.be/o6KAppcvqqc",@"https://youtu.be/n15q0aoWCsY",@"https://youtu.be/g4ed8zI7ccw",@"https://youtu.be/mUJEI_Wvqu4",@"https://youtu.be/FYWuEPp2IjY",nil];
    
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
    
    
    for(int i = 1;i <= 8;i++)
    {
        VideoView *videoV = (VideoView *)[[[NSBundle mainBundle] loadNibNamed:@"VideoView" owner:nil options:nil] objectAtIndex:0];
        
        
        [videoV setFrame:CGRectMake( originX, originY, width, 120)];
        
        [self.scrollView addSubview:videoV];
        
        videoV.parent = self;
        
        videoV.tag = i - 1;
        
        if(i > 0 && (i % 3 == 0))
        {
            
            originY += 130;
            
            originX = 10;
        }
        else
        {
            originX += (width + 10);
        }
        
        [videoV.videoThambunil setImage:[UIImage imageNamed:[self.videoThambunilArray objectAtIndex:i-1]]];
    }
    
    //originY += 50;
    
    [self.scrollView setContentSize:CGSizeMake( 0, originY)];
    
    [UIView animateWithDuration:0.35 animations:^{
        [self.scrollView setAlpha:1.0];
    }];

    
}

- (void)VideoSelectedWithIndex:(int)index
{

   
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[self.videoUrlArray objectAtIndex:index]]] options:@{} completionHandler:nil];
    
    
//    NSString *videoURL = @"http://youtu.be/Wq_CtkKrt1o";
//    
//    videoView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 768, 1024)];
//    videoView.backgroundColor = [UIColor clearColor];
//    videoView.opaque = NO;
//    videoView.delegate = self;
//    [self.view addSubview:videoView];
//    
//    
//    NSString *videoHTML = [NSString stringWithFormat:@"\
//                           <html>\
//                           <head>\
//                           <style type=\"text/css\">\
//                           iframe {position:absolute; top:50%%; margin-top:-130px;}\
//                           body {background-color:#000; margin:0;}\
//                           </style>\
//                           </head>\
//                           <body>\
//                           <iframe width=\"100%%\" height=\"240px\" src=\"%@\" frameborder=\"0\" allowfullscreen></iframe>\
//                           </body>\
//                           </html>", videoURL];
//    
//    [videoView loadHTMLString:videoHTML baseURL:nil];
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ButtonActions:(id)sender
{
    if (sender == self.backBtn)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
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
