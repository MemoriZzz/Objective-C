//
//  Person.m
//  KVO
//
//  Created by wangyuqing on 2021/3/29.
//

#import "Person.h"

@implementation Person

-(void) observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                       context:(void *)context{
    if([keyPath isEqualToString:@"hunger"]){
        NSLog(@"%@", [change objectForKey:NSKeyValueChangeOldKey]);
    }
}

@end
