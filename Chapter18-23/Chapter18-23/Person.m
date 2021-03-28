//
//  Person.m
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

-(void) bodyMassIndex{
    NSLog(@"bmi is %f.",  _weightInKilos / (_heightInMeters*_heightInMeters));
}

@end


