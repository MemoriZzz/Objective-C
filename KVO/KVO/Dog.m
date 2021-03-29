//
//  Dog.m
//  KVO
//
//  Created by wangyuqing on 2021/3/29.
//

#import "Dog.h"

@implementation Dog
@synthesize hunger;

-(id)init{
    self = [super init];
    if(self) hunger = 555;
    return self;
}

@end
