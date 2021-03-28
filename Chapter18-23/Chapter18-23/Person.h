//
//  Person.h
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#ifndef Person_h
#define Person_h

@interface Person : NSObject
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


#endif /* Person_h */
