//
//  Person.h
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#ifndef Person1_h
#define Person1_h

@interface Person1 : NSObject
{
    float _heightInMeters;
    int _weightInKilos;
}
//getters & setters
-(float) heightInMeters;
-(void) setHeightInMeters: (float)h;
-(int) weightInKilos;
-(void) setWeightInKilos: (int) w;
//BMI
-(float) bodyMassIndex;

@end


#endif /* Person1_h */
