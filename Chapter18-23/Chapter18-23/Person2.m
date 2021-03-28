//
//  Person2.m
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>
#import "Person2.h"

@implementation Person2

//getters & setters
//-(float) heightInMeters{
//    return _heightInMeters;
//}
//-(void) setHeightInMeters: (float)h{
//    _heightInMeters = h;
//}
//-(int) weightInKilos{
//    return _weightInKilos;
//}
//-(void) setWeightInKilos: (int) w{
//    _weightInKilos = w;
//}


//BMI
-(float) bodyMassIndex{
    //二者等价
    return _weightInKilos / (_heightInMeters*_heightInMeters); //下划线依然可用！
//    return [self weightInKilos] / ([self heightInMeters] * [self heightInMeters]);
}

@end
