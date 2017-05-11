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

-(IBAction)ButtonActions:(id)sender;


@end
