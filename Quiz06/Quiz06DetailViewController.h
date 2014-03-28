//
//  Quiz06DetailViewController.h
//  Quiz06
//
//  Created by Lewis Cooper on 3/28/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface Quiz06DetailViewController : UIViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *taskNameTextField;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)save:(id)sender;

- (IBAction)sliderChange:(id)sender;



@property (nonatomic, strong) Task *currentTask;

-(void) setTask:(Task *)newTask;

@property (nonatomic, copy) void (^dismissBlock)(void);

@end
