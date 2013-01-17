//
//  ViewController.m
//  Clock
//
//  Created by RTH on 1/15/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "ViewController.h"
#import <time.h>

@interface ViewController ()
{
    NSDate* dateAndTime;
    IBOutlet UILabel* dateAndTimeLabel;
    UIView* currentView;
}

@end

@implementation ViewController
@synthesize showCurrentTime;

- (void)viewDidLoad
{
    // NSDateFormatter courtesy of Stack Overflow
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    NSString *stringVersionOfDate = [formatter stringFromDate:[NSDate date]];
    
    showCurrentTime.text = stringVersionOfDate;
    
    [super viewDidLoad];
	
    NSLog (@"dateAndTime = %@", dateAndTime);  // Yes, we know the date & time.

	NSLog (@"dateAndTimeLabel = %@", dateAndTimeLabel.text);

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBackgroundColor:(id)sender {
    NSLog(@"Changing the background color.");
    
    currentView = [self view];
    NSLog (@"current class = %@", [self class]);
    NSLog (@"current backgroundColor = %@", [currentView backgroundColor]);
    
    // [currentView backgroundColor] = [UIColor orangeColor];
    // dots on the left. Brackets on the right. Amirite???
    currentView.backgroundColor = [UIColor redColor];
    
    
}

- (IBAction)resetBackgroundColor:(id)sender {

    currentView.backgroundColor = [UIColor grayColor];

}

- (IBAction)getCurrentTime:(id)sender {

    // NSDateFormatter courtesy of Stack Overflow
    // Repeating this violates DRY!!!
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    NSString *stringVersionOfDate = [formatter stringFromDate:[NSDate date]];

                                                        // First, get the time
    NSLog (@"dateAndTime = %@", stringVersionOfDate);  // so we can display it.

    // showCurrentTime.text = dateAndTime;        // gotta cast this as a string.
    showCurrentTime.text = stringVersionOfDate;

    
}

@end
