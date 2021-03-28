//
//  Person2.h
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#ifndef Person2_h
#define Person2_h

@interface Person2 : NSObject
//{
//    float _heightInMeters;
//    int _weightInKilos;
//}
//getters & setters
//-(float) heightInMeters;
//-(void) setHeightInMeters: (float)h;
//-(int) weightInKilos;
//-(void) setWeightInKilos: (int) w;

@property(nonatomic) float heightInMeters;
@property(nonatomic) int weightInKilos;


//BMI
-(float) bodyMassIndex;

@end


#endif /* Person2_h */
