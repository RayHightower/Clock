//
//  ViewController.m
//  Clock
//
//  Created by RTH on 1/15/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSDate* dateAndTime;
    IBOutlet UILabel* dateAndTimeLabel;
    NSTimeZone* timeZone;
}
@end

@implementation ViewController



- (void)viewDidLoad
{
    dateAndTime = [NSDate date];
    dateAndTimeLabel.text = @"12:01pm";      // [NSDate date];
    // timeZone = [NSTimeZone timeZoneWithName];
    
    NSArray *timeZoneNames = [NSTimeZone knownTimeZoneNames];
    
    
    [super viewDidLoad];
	
    NSLog (@"dateAndTime = %@", dateAndTime);  // Yes, we know the date & time.
    NSLog (@"timeZone = %@", timeZone);

    NSLog (@"timeZoneNames = %@", timeZoneNames);

	NSLog (@"dateAndTimeLabel = %@", dateAndTimeLabel.text);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
