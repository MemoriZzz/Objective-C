//
//  Person.h
//  Chapter18-23
//
//  Created by admin on 2021/3/28.
//

#ifndef Person_h
#define Person_h
@interface Person: NSObject

@property(nonatomic) float heightInMeters;
@property(nonatomic) int weightInKilos;


//BMI
-(void) bodyMassIndex;

@end


#endif /* Person_h */
