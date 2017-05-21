//
//  RoundsViewController.h
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"
#import <MapKit/MapKit.h>
#import "KNCirclePercentView.h"
@interface RoundsViewController : UIViewController< iCarouselDataSource, iCarouselDelegate>

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, strong) iCarousel *carousel;

@property (nonatomic, strong) NSMutableArray *carouselItems;

@property (strong, nonatomic) IBOutlet UIView *dateConatinerView;

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) IBOutlet KNCirclePercentView *percentView;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) IBOutlet UILabel *dateLbl;

@property (strong, nonatomic) IBOutlet UILabel *monthLbl;

@property (strong, nonatomic) IBOutlet UILabel *roundNoLbl;

@property (strong, nonatomic) IBOutlet UILabel *detailsLbl;

@property (strong, nonatomic) IBOutlet UILabel *timeLbl;

@property (strong, nonatomic) NSMutableArray *dateArray;

@property (strong, nonatomic) NSMutableArray *monthArray;

@property (strong, nonatomic) NSMutableArray *detailsArray;

@property (strong, nonatomic) NSMutableArray *timeArray;

-(IBAction)ButtonActions:(id)sender;


@end
