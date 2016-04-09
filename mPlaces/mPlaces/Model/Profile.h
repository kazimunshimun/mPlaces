//
//  Profile.h
//  mPlaces
//
//  Created by Anik on 4/9/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property (assign) int profileID;
@property (copy) NSString *name;
@property (copy) NSString *profilePictureURL;
@property (copy) NSDate *createdDate;
@property (copy) NSDate *modifiedDate;

@end
