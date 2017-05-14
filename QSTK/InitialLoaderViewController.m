//
//  InitialLoaderViewController.m
//  QSTK
//
//  Created by Amr on 5/14/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "InitialLoaderViewController.h"
#import "KKProgressTimer.h"
#import "InitialViewController.h"

#define pi         3.14
#define   DEGREES_TO_RADIANS(degrees)  ((pi * degrees)/ 180)



@interface InitialLoaderViewController ()<KKProgressTimerDelegate>

@property (weak, nonatomic) IBOutlet KKProgressTimer *timer1;

@end

@implementation InitialLoaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
//    KKProgressTimer *timer2 = [[KKProgressTimer alloc] initWithFrame:self.bounds];
//    KKProgressTimer *timer3 = [[KKProgressTimer alloc] initWithFrame:self.bounds];
//    KKProgressTimer *timer4 = [[KKProgressTimer alloc] initWithFrame:self.bounds];
    //[self.view2 addSubview:timer2];
    // [self.view3 addSubview:timer3];
    //[self.view4 addSubview:timer4];
    
    self.timer1.delegate = self;
    //timer2.delegate = self;
    self.timer1.tag = 1;
   // timer2.tag = 2;
    
    __block CGFloat i1 = 0;
    [self.timer1 startWithBlock:^CGFloat {
        return i1++ / 100;
    }];
   
}

- (UIBezierPath *)createArcPath
{
    UIBezierPath *aPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150)
                                                         radius:75
                                                     startAngle:0
                                                       endAngle:DEGREES_TO_RADIANS(135)
                                                      clockwise:YES];
    return aPath;
}


#pragma mark KKProgressTimerDelegate Method
- (void)didUpdateProgressTimer:(KKProgressTimer *)progressTimer percentage:(CGFloat)percentage {
    switch (progressTimer.tag) {
        case 1:
            if (percentage >= 1) {
                
                
//                InitialViewController *initialView = [[InitialViewController alloc] init];
//                
//                [self.navigationController pushViewController:initialView animated:NO];
//              
                [progressTimer stop];
                
                
            }
            break;
        case 2:
            if (percentage >= .6) {
                [progressTimer stop];
            }
        default:
            break;
    }
}

- (void)didStopProgressTimer:(KKProgressTimer *)progressTimer percentage:(CGFloat)percentage {
    NSLog(@"%s %f", __PRETTY_FUNCTION__, percentage);
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
