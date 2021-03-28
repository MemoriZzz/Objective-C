//
//  Employee.h
//  Chapter18-20
//
//  Created by admin on 2021/3/28.
//
#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person

@property (nonatomic) int employeeID;
@property (nonatomic) NSDate * hiredDate;

-(void) getYearOfEmployment;
-(void) bodyMassIndex; //override


@end

NS_ASSUME_NONNULL_END
