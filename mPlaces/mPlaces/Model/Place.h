//
//  Place.h
//  mPlaces
//
//  Created by Anik on 4/9/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject{
    //place for protected instance variables (not reconmmended)
}

@property (assign) int placeID;
@property (assign) int creatorID;
@property (copy) NSString *name;
@property (copy) NSString *placeDescription;
@property (assign) float latitude;
@property (assign) float longitude;
@property (assign) float rate;
@property (copy) NSDate *createdDate;
@property (copy) NSDate *modifiedDate;

@end
