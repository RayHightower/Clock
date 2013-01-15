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

}
@end

@implementation ViewController

- (void)viewDidLoad
{
    dateAndTime = [NSDate date];
    
    [super viewDidLoad];
	NSLog (@"Today's date and time: %@", dateAndTime);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
