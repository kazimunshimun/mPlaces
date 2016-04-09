//
//  Review.h
//  mPlaces
//
//  Created by Anik on 4/9/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject

@property (assign) int reviewID;
@property (assign) int creatorID;
@property (assign) int placeID;
@property (copy) NSString *comment;
@property (assign) float rate;
@property (copy) NSDate *createdDate;
@property (assign) BOOL isReported;

@end
