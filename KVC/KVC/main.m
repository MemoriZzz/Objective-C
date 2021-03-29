//
//  main.m
//  KVC
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//Key-Value Coding & Key-Value Obersver

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //method1:
        Person * me = [[Person alloc] init];
//        [me setAge:24];
//        [me setName:@"Rachel"];
        
        [me setValue:@"Rachel" forKey:@"name"]; //set property name: Rachel
        NSLog(@"my name: %@", [me valueForKey:@"name"]); //get value of key name

        [me setValue:[NSNumber numberWithInt:24] forKey:@"age"];//set property age: 24
        NSLog(@"my age: %@", [me valueForKey:@"age"]); //get value of key age
        
        //method2:
        Person * you = [[Person alloc] init];
        [you setValuesForKeysWithDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                            @"Bob",                         @"name",
                                            [NSNumber numberWithInt:26],    @"age",
                                            nil]];
        NSLog(@"your name: %@", [you valueForKey:@"name"]);
        NSLog(@"your age: %@", [you valueForKey:@"age"]);
        
        //Dictionary
        NSDictionary *myDict = [me dictionaryWithValuesForKeys:[NSArray arrayWithObjects:@"name",@"age",nil]];
        NSDictionary *yourDict = [you dictionaryWithValuesForKeys:[NSArray arrayWithObjects:@"name",@"age",nil]];
        NSLog(@"%@", myDict);
        NSLog(@"%@", yourDict);
        
        
    }
    return 0;
}
