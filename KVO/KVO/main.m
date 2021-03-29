//
//  main.m
//  KVO
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * person = [[Person alloc]init];
        Dog * dog = [[Dog alloc]init];
        
        //Start observing
        //Anytime the dog hunger value changes, person will be notified this change.
        [dog addObserver:person
             forKeyPath:@"hunger"
             options:NSKeyValueObservingOptionOld //whenever the value is set, that value is the one we want to recieve.
             context:NULL];
        
        //Changing...
        [dog setHunger:666];
        [dog setHunger:777];
        
        
        //Stop observing
        [dog removeObserver:person forKeyPath:@"hunger"];
        
    }
    return 0;
}
