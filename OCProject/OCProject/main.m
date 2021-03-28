//
//  main.m
//  OCProject
//
//  Created by admin on 2021/3/26.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Animal+AnimalCategory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //基本类型
        //NSInteger
        NSInteger i = 2147483648;
        NSLog(@"%ld", (NSInteger)i);
        
        //BOOL
        BOOL b = YES;
        NSLog(@"%d", b);
        
        
        //CGFloat, CG stands for "Core Graphics"
        CGFloat f = 1.23456;
        NSLog(@"%f", f);
        
        //NSString
        //深拷贝
        NSString* s1 = @"123";
        NSString* s2 = s1;
        s1 = @"456";
        NSLog(@"%@", s1);
        NSLog(@"%@", s2);
        //转整形/浮点
        NSString* num = @"96.0627";
        NSInteger intValue = [num integerValue];
        CGFloat   floatValue = [num doubleValue];
        NSLog(@"%ld", intValue);
        NSLog(@"%f", floatValue);
        
        //NSNumber
        NSNumber* num1 = @(123);
        NSNumber* num2 = @(3.1415);
        NSNumber* num3 = @(YES);
        NSInteger intVal = [num1 integerValue];
        CGFloat floatVal = [num2 doubleValue];
        BOOL boolVal = [num3 boolValue];
        NSLog(@"%ld", intVal);
        NSLog(@"%f", floatVal);
        NSLog(@"%d", boolVal);
        
        //NSArray
        NSArray* numbers = @[@(1),@(2),@(3)];//要将基本数据类型转换成对象存储
        for(int i=0; i<numbers.count; i++) NSLog(@"%@",numbers[i]);
        
        //控制流程 if-else
        
        //循环流程 loop
        
        //枚举 NS_ENUM, NS_OPTION
        //https://www.youtube.com/watch?v=lx96AMN80Xc
        typedef NS_ENUM(NSUInteger, CompassPoint) {
            North = 7,
            South = 9,
            West = 4,
            East = 6
        };
        CompassPoint cp = North;
        NSLog(@"%lu",(unsigned long)cp);
        
        typedef NS_OPTIONS (NSInteger, Character){
            Alien = 1<<0,
            Enemy = 1<<1,
            Player = 1<<2
        };
        Character c = Alien |Enemy;
        NSLog(@"%ld", (long)c);
        
        //类和方法
//        Animal * animal = [Animal new];
        Animal * animal = [[Animal alloc] init]; //new
        [Animal eat_static];//call class method
        [animal eat]; //call instance method
        [animal getRed:0.5 Green:0.2 Blue:0.4];//call method with multiple parameters
        [animal printName:[animal getName:@"Rachel"]]; //调用链
        
        //构造器
        Animal * animal1 = [[Animal alloc] init];
        NSLog(@"animal age(override construcor) is %d",animal1->_age);
        Animal * animal2 = [[Animal alloc] initWithAge:666];
        NSLog(@"animal age(customized construcor) is %d",animal2->_age);
        
        
        //成员变量
        animal->_name = @"Bob";
        NSLog(@"get animal name: %@",animal->_name);
        animal->_age = 12;
        NSLog(@"get animal age: %d",animal->_age);
        animal->_array =  @[@(1),@(2),@(3)];
        NSLog(@"get animal array: [%@,%@,%@]", animal->_array[0],animal->_array[1],animal->_array[2]);
        
        //@property, 可以用.调用attribute
        animal.name = @"Rachel";
        NSLog(@"get animal name: %@",animal.name);
        animal.age = 16;
        NSLog(@"get animal age: %d",animal.age);
        animal.array =  @[@(4),@(5),@(6)];
        NSLog(@"get animal array: [%@,%@,%@]", animal.array[0],animal.array[1],animal.array[2]);
        
        //Category: add methods
        [animal log];
        
        //Extension: add private properties
        [animal getPrivateAttribute];
        
        //Protocol: like a java interface, declared methods;
        [animal mustDo];
        [animal couldDo];
        
        //Memory management
        //ARC: automatic reference counting
        NSDate * current = [NSDate date];
        NSLog(@"current time is %@.", current);
        sleep(2);
        current = [NSDate date];
        NSLog(@"current time is %@.", current);
        
        
        
        
        
        
        

        
        
        
        
        
        

        
    }
    return 0;
    
}
