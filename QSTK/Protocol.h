//
//  Protocol.h
//  MunchOn
//
//  Created by Jerrin on 12/03/15.
//  Copyright (c) 2015 Jerrin. All rights reserved.
//

#ifndef MunchOn_Protocol_h
#define MunchOn_Protocol_h
#import <UIKit/UIKit.h>

@protocol cellpass <NSObject>

-(void)viewTagValue:(UIButton*)sender;


-(void)passModalValtoViewController :(NSDictionary*)dataDict;

@end

@protocol navigationHome <NSObject>
- (void)navigationPage:(NSString*)menuOption;
@end



#endif
