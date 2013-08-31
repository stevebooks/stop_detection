//
//  GPS.m
//  StopDetection
//
//  Created by Steven Books on 8/31/13.
//  Copyright (c) 2013 TrackMyDrive LLC. All rights reserved.
//

//
//  GPS.m
//  iTrack
//
//  Created by Steven Books on 11/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GPS.h"

@implementation GPS
static GPS *g_;

+ (GPS*)get{
    if (!g_) {
        NSLog(@"Creating instance of GPS!");
        g_ = [GPS new];
    }
    return g_;
}

- (id)init{
    if (!(self = [super init]))
		return nil;
    
    //Setup the manager
    manager_ = [[CLLocationManager alloc] init];
    if (!manager_) {
		return nil;
	}
    manager_.distanceFilter = kCLDistanceFilterNone;
    manager_.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
    manager_.desiredAccuracy = kCLLocationAccuracyBest;
	manager_.delegate = self;
    if ([manager_ respondsToSelector:@selector(pausesLocationUpdatesAutomatically)]) {
        manager_.pausesLocationUpdatesAutomatically = NO;
    }
    
    return self;
}

- (void)start{
    NSLog(@"Start Tracking");
    [manager_ startUpdatingLocation];
}

#pragma mark CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation{
    
    NSLog(@"Location updated: %@", newLocation);
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"locationManager - didFailWithError: %@", [error localizedDescription]);
    NSLog(@"domain:%@", [error domain]);
    NSLog(@"code:%i", [error code]);
}

@end
