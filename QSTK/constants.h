//
//  constants.h
//  GoShop
//
//  Created by jerrin on 24/11/15.
//  Copyright (c) 2015 Jerrin. All rights reserved.
//

#ifndef GoShop_constants_h
#define GoShop_constants_h

#define kAppName                                            @"GoShop"
#pragma mark -

#define kBeaconsFoundNotification                           @"BeaconsFoundNotification"

#define kEnterBeaconAreaNotificationKey                     @"EnterBeaconAreaNotification"

#define kExitBeaconAreaNotificationKey                      @"ExitBeaconAreaNotification"
typedef enum BeaconState
{
    BeaconStateNew = 0,
    BeaconStateExisting,
    BeaconStateToBeRemoved,
} BeaconState;

typedef enum
{
    navbarsetLoc = 0,
    navbarProfile,
    navbarMultiwhite,
    navbarClear,
    navbarList,
    navbarMap,
    navbarMulti,
    navbarTitle,
    navbarMallMap,
    navbarMicelloSearch
}navbarType;

typedef enum
{
    URLgetReviewReqTag = 1,
    URLgetReviewlikeReqTag,
    URLcommentReqTag,
    URLlikeReviewReqTag,
    URLdeleteReqTag,
    URLlikeCommentReqTag,
    URLfollowReqTag,
    URLbookmarkReqTag,
    URLlocalFeed,
    URLmyFeed,
    URLgoFeed,
    URLgetallshops,
    URLgetallMalls,
    URLuserFollowing,
    URLuserBookmarks,
    URLuserCheckins,
    URLuserReviewLikes,
    URLuserReviews,
    URLwriteReviewRate,
    URLcheckin,
    URLeditProfPic,
    URLgetUserReviews,
    URLgetHomePageImages,
    URLGetBeacons,
    URLGetMallClusters,
    ProfileParams
}RequestTag;

#pragma mark Service constants
#define kDescriptionKey                                     @"deals"
#define kLogoImageurlKey                                    @"shopIcon"
#define kIdKey                                              @"uuid"
#define kImageurlKey                                        @"dealImage"
#define kThumbnailImageurlKey                               @"thumbnailimageurl"
#define kDetailsurlKey                                      @"detailsurl"
#define kMajorminorKey                                      @"majorMinor"
#define kNameKey                                            @"shopName"
#define kItemsKey                                           @"items"
#define kLocationsKey                                       @"locations"
#define kImageNameKey                                       @"imagename"
#define kFloorImageKey                                      @"floorimage"
#define kLocationIdKey                                      @"locationid"
#define kFloorIdKey                                         @"floorid"
#define kXcordinateKey                                      @"xcordinate"
#define kYcordinateKey                                      @"ycordinate"
#define kBeaconFinderKey                                    @"beaconFinder"
#define kRegionIdKey                                        @"regionID"



#define kUrlType                                            @"urlType"
#define kUrlTagval                                          @"tagvalue"
#define kUrlopr                                             @"operation"



#define PROXIMITY_UUID                                      @"B9407F30-F5F8-466E-AFF9-25556B57FE6D"
#define kInternetReachableCheckHost                         @"google.com"

#define kJSONkey                                            @"JSON"
#define SCREEN_HEIGHT                                       [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH                                        [UIScreen mainScreen].bounds.size.width

#define DEVICE_VER                                          [[[UIDevice currentDevice] systemVersion] floatValue]

#define kIsiOS8Device                                       ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
#define kBuildUsingXCode6                                   1

#define kRequestTimeOutInterval                             60
//#define kConfigURL                                          @"http://ec2-54-69-234-149.us-west-2.compute.amazonaws.com:8080/SpringServices/service/version/settings"


//https://itunes.apple.com/in/app/goshop-app/id1125709892?mt=8


#define kConfigURL                                          @"config.json"
#define kServerURLKey                                       @""

#define kEnableNotificationsKey                             @"EnableNotifications"
#define kCardBgColor                                        [UIColor colorWithRed:0.9490 green:0.9490 blue:0.9490 alpha:1.0]

#define kAppThemeColor                                        [UIColor colorWithRed:0.984f green:0.267f blue:0.227f alpha:1.00f]




#define iOS7AppStoreURLFormat                               @"itms-apps://itunes.apple.com/app/id%d"

#define  kAppStoreId                                        1125709892


#define kResponseVOKey                                      @"responseVO"
#define kMessageKey                                         @"message"
#define kEntryMessageKey                                    @"entrymessage"
#define kExitMessageKey                                     @"exitmessage"
#define kStatusKey                                          @"status"
#define kConfigResponseKey                                  @"configResponse"
#define kBeaconDetailsKey                                   @"beaconDetails"
#define kImagePathurl                                       @"imagePathURL"
#define kBeaconsKey                                         @"beaconDtos"
#define kAppVersionKey                                      @"appVersion"
#define kURLKey                                             @"url"
#define kScreenMappingKey                                   @"screenMapping"
#define kDetailsKey                                         @"details"
#define kVenueImageKey                                      @"venueimage"

#define kVersionDetailsKey                                  @"versionDetails"
#define kVersionKey                                         @"version"
#define kGalleryDetailsKey                                  @"galleryDetails"
#define kGalleryKey                                         @"gallery"
#define kLocationDetailsKey                                 @"locationDetails"
#define kLatitudeKey                                        @"latitude"
#define kLongitudeKey                                       @"longitude"
#define kApplicationFolderName                              @"GoShop"
#define kBeaconRefreshIntervalKey                           @"beaconRefreshInterval"
#define kLoggedin                                           @"Loggedin"

#define kUserCluster                                        @"UserCluster"
#define kUserClusterName                                    @"UserClusterName"
#define kUsername                                           @"Username"
#define kUserEmail                                          @"UserEmail"
#define kUserID                                             @"UserID"
#define kIsFacebookLogin                                    @"IsFacebookLogin"
#define kPassword                                           @"Password"
#define kUser_Fname                                         @"user_fname"
#define kUser_Lname                                         @"user_lname"
#define kUser_phone                                         @"user_phone"
#define kUser_token                                         @"user_token"
#define kUser_image                                         @"user_image"
#define kUser_bookmarks                                     @"user_bookmarks"
#define kUser_following                                     @"user_following"
#define kUser_checkins                                      @"user_checkins"
#define kUser_reviews                                       @"user_reviews"
#define kUser_ratings                                       @"user_ratings"
#define kUser_homeImage                                     @"user_homeImage"

#define kShopsList                                          @"ShopsList"



#define kNoBeaconsFoundMessage @"No nearby GoShop devices found!. Either your are not nearby  or your bluetooth is not turned on."

#define kAppLaunchedForMoreThanOneTime                      @"AppLaunchedForMoreThanOneTime"

#define kResetview                                          @"ReviewRequiresReset"
#define kResetviewLogin                                     @"ReviewRequiresResetLogin"
#define kResetviewContents                                  @"RequiresContentReset"

#define kCompletedWithFetchingResourcesAndUpdatingNotification @"CompletedWithFetchingResourcesAndUpdatingNotification"


#define kAPNSDeviceTokenKey                                 @"APNSDeviceTokenKey"
#define kDeviceIdKey                                        @"DeviceIdKey"

////////////////////

#define devTkn                                     @"ddfe58ff45ef208e233f78f0c60b6d2d8093a1430bbf8f5d0b5b3877300ca36a"

#define KdeviceType                                   @"ios"


#define KlocalBase                  @"http://192.168.1.167:8080/GoShop"

////////////////////////


#endif
