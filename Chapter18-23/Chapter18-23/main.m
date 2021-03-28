//
//  main.m
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * p = [[Person alloc] init];
        
        [p setHeightInMeters:1.63];
        NSLog(@"height is %f meters.", [p heightInMeters]);
        
        [p setWeightInKilos: 40];
        NSLog(@"weight is %d kilos.", [p weightInKilos]);
        
        NSLog(@"bmi is %f.", [p bodyMassIndex]);
        
        
    }
    return 0;
}
