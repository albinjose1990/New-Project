//
//  InitialViewController.m
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "InitialViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "constants.h"
#import "HomeViewController.h"
@interface InitialViewController ()

@property (nonatomic) AVPlayer *avPlayer;

@end

@implementation InitialViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createVideoPlayer];
    
}

-(void)createVideoPlayer
{
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"LCSC FOR MOBILE APP" ofType:@"mov"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    
    self.avPlayer = [AVPlayer playerWithURL:fileURL];
    
    self.avPlayer.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    
    self.avPlayer.actionAtItemEnd = AVPlayerActionAtItemEndNone;
//
    
    // [self.avPlayer.currentItem addObserver:self forKeyPath:AVPlayerItemDidPlayToEndTimeNotification options:NSKeyValueObservingOptionNew context:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playerItemDidReachEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:[self.avPlayer currentItem]];
    
    AVPlayerLayer *videoLayer = [AVPlayerLayer playerLayerWithPlayer:self.avPlayer];
    
    videoLayer.videoGravity = AVLayerVideoGravityResize;

    
    CGRect frame = self.playerView.frame;
    
    frame.origin.x = 0;
    
    frame.origin.y = 0;
    
    frame.size.width = SCREEN_WIDTH;
    
    frame.size.height = SCREEN_HEIGHT;
    
    
    videoLayer.frame = frame;
    // videoLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    
    //[self.view.layer addSublayer:videoLayer];
    
    [self.playerView.layer addSublayer:videoLayer];
    
    
    [self.avPlayer play];
    
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:[self.avPlayer currentItem]];
    
    [self.avPlayer pause];
}



- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
}

- (void)playerItemDidReachEnd:(NSNotification *)notification
{

    
    HomeViewController *homeView = [[HomeViewController alloc] init];
    
    CATransition* transition = [CATransition animation];
    
    transition.duration = 0.3;
    
    transition.type = kCATransitionFade;
    
    transition.subtype = kCATransitionFromTop;
    
    [self.navigationController pushViewController:homeView animated:NO];
    
    [self.avPlayer pause];
    
    [self.playerView removeFromSuperview];
    


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
