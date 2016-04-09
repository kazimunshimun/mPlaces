//
//  Message.h
//  mPlaces
//
//  Created by Anik on 4/9/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property (assign) int messageID;
@property (assign) int senderID;
@property (assign) int receiverID;
@property (assign) int messageType;
@property (copy) NSString *messageText;
@property (assign) float messageLatitude;
@property (assign) float messageLongitude;
@property (copy) NSDate *sendDate;

@end
