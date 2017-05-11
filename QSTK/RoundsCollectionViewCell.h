//
//  RoundsCollectionViewCell.h
//  QSTK
//
//  Created by Amr on 5/11/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KNCirclePercentView.h"
@interface RoundsCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet KNCirclePercentView *circleLoader;

@property (strong, nonatomic) IBOutlet UILabel *roundNameLbl;

-(void)drawCircleLoader;

@end
