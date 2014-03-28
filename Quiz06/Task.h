//
//  Task.h
//  Quiz06
//
//  Created by Lewis Cooper on 3/28/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) CGFloat urgency;
@property (nonatomic) NSDate *dueDate;

@end
