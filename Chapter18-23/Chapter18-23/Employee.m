//
//  Employee.m
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#import "Employee.h"

@implementation Employee

-(void) getYearOfEmployment{
    NSLog(@"Year of employment of Employee%d is: %@", [self employeeID], [self hiredDate]);
}

@end
