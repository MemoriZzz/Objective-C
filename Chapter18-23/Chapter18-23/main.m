//
//  main.m
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>
#import "Person1.h"
#import "Person2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //使用变量和getters&setters
        Person1 * p1 = [[Person1 alloc] init];
        
        [p1 setHeightInMeters:1.63];
        NSLog(@"height is %f meters.", [p1 heightInMeters]);
        
        [p1 setWeightInKilos: 40];
        NSLog(@"weight is %d kilos.", [p1 weightInKilos]);
        
        NSLog(@"bmi is %f.", [p1 bodyMassIndex]);
        
        //使用属性
        Person2 * p2 = [[Person2 alloc] init];
        p2.heightInMeters = 1.63;
        NSLog(@"height is %f meters.", p2.heightInMeters);
        
        p2.weightInKilos = 40;
        NSLog(@"weight is %d kilos.", p2.weightInKilos);
        
        NSLog(@"bmi is %f.", [p1 bodyMassIndex]);
        
        
    }
    return 0;
}
