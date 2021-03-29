//
//  main.m
//  Chapter21
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建员工数组
        NSMutableArray * roster = [[NSMutableArray alloc] init];
        
        //创建10个employees
        for (int i=0; i<10; i++) {
            Employee * e = [[Employee alloc]init];
            e.employeeID = i;
            [roster addObject:e];
        }
        
        //创建20个assets，随机分配给10个employee
        for(int i=0; i<20; i++){
            Asset * a = [[Asset alloc] init];
            a.label = @"Laptop";
            a.value = 100 + i*17; //random value
            NSInteger randomIndex = random() % 10; //生成从0到9，10个随机数
            Employee * thisEmployee = [roster objectAtIndex: randomIndex];
            [thisEmployee addAssets:a];
        }
        NSLog(@"Roster: %@", roster);
        NSLog(@"\nGiving up ownership of employee5: ");
        [roster removeObjectAtIndex:5];
        NSLog(@"\nGiving up ownership of roster: ");
        roster = nil;
        
    }
    return 0;
}
