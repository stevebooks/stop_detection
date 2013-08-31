//
//  ViewController.m
//  StopDetection
//
//  Created by Steven Books on 8/31/13.
//  Copyright (c) 2013 TrackMyDrive LLC. All rights reserved.
//

#import "ViewController.h"
#import "GPS.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GPS *gps = [GPS get];
    [gps start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
