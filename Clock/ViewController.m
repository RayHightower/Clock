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

}
@end

@implementation ViewController

-(IBAction)show:(id)sender
    {
        ViewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
        
        //    myViewController.labelText = myTextField.text;
        [myViewController setTheText:myTextField.text];
        [self.view addSubview:myViewController.view];
    }
    
-(IBAction)pushed:(id)sender
    {
        myLabel.text = myTextField.text;
        [myLabel setText:[myTextField text]];
    }
    

- (void)viewDidLoad
{
    dateAndTime = [NSDate date];
    
    [super viewDidLoad];
	NSLog (@"Today's date and time: %@", dateAndTime);  // Yes, we know the date & time.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
