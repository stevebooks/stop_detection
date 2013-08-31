//
//  GPS.h
//  StopDetection
//
//  Created by Steven Books on 8/31/13.
//  Copyright (c) 2013 TrackMyDrive LLC. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>


@interface GPS : NSObject <CLLocationManagerDelegate>{
    CLLocationManager *manager_;
}

+ (GPS*)get;
- (id)init;
- (void)start;

@end
