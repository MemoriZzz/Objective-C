//
//  Person.m
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>
#import "Person1.h"

@implementation Person1

//getters & setters
-(float) heightInMeters{
    return _heightInMeters;
}
-(void) setHeightInMeters: (float)h{
    _heightInMeters = h;
}
-(int) weightInKilos{
    return _weightInKilos;
}
-(void) setWeightInKilos: (int) w{
    _weightInKilos = w;
}
//BMI
-(float) bodyMassIndex{
    return _weightInKilos / (_heightInMeters*_heightInMeters);
}

@end
