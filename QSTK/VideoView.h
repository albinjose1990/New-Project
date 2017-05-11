//
//  VideoView.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MediaViewController;

@interface VideoView : UIView

@property (nonatomic, assign) int index;

@property (nonatomic, assign) MediaViewController *parent;

@property (strong , nonatomic) IBOutlet UIImageView *photo;

@property (strong, nonatomic) IBOutlet UIImageView *videoThambunil;

- (IBAction)selectionButtonAction:(UIButton *)sender;

-(void)setImageAtIndex:(int)Index;

@end
