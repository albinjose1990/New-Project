//
//  PhotoView.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoViewController;
@interface PhotoView : UIView

@property (nonatomic, assign) int index;

@property (nonatomic, assign) PhotoViewController *parent;

@property (strong , nonatomic) IBOutlet UIImageView *photo;

@property (strong, nonatomic) IBOutlet UILabel *tittleLbl;

@property (strong, nonatomic) IBOutlet UIImageView *PhotoImgView;

- (IBAction)selectionButtonAction:(UIButton *)sender;



@end
