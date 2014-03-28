//
//  Quiz06DetailViewController.m
//  Quiz06
//
//  Created by Lewis Cooper on 3/28/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import "Quiz06DetailViewController.h"

@interface Quiz06DetailViewController ()
- (void)configureView;
@end

@implementation Quiz06DetailViewController

#pragma mark - Managing the detail item
@synthesize taskNameTextField;
@synthesize urgencySlider;
@synthesize urgencyLabel;
@synthesize datePicker;
@synthesize currentTask;

@synthesize dismissBlock;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [taskNameTextField setDelegate:self];
}

- (void)viewDidUnload
{
    [self setDatePicker:nil];
    [self setUrgencyLabel:nil];
    [self setUrgencySlider:nil];
    [self setTaskNameTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [taskNameTextField resignFirstResponder];
    
    return YES;
}


- (void) viewWillAppear:(BOOL)animated
{
    [datePicker setDate:currentTask.dueDate];
    [urgencyLabel setText:[NSString stringWithFormat:@"Urgency: %.0f", currentTask.urgency]];
    [urgencySlider setValue:currentTask.urgency/10.0];
    [taskNameTextField setText:currentTask.name];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)save:(id)sender {
    
    [currentTask setDueDate:[datePicker date]];
    [currentTask setName:taskNameTextField.text];
    [currentTask setUrgency:urgencySlider.value * 10.0];
    
    [self dismissViewControllerAnimated:YES completion:dismissBlock];
}

- (IBAction)sliderChange:(id)sender {
    
    urgencyLabel.text = [NSString stringWithFormat:@"Urgency %.0f", urgencySlider.value*10];
}

@end
