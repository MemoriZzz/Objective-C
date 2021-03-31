//
//  Employee.m
//  UseSelfInBlock
//
//  Created by wangyuqing on 2021/3/30.
//

#import "Employee.h"

@implementation Employee


//Objective C 教程  Page 225
- (void) test{
    __weak Employee *weakSelf = self; //弱引用(将强引用转化为弱引用)：防止强引用循环
    self.myBlock = ^{
        Employee *innerSelf = weakSelf; //局部强引用(将弱引用转化为强引用)：防止block未结束self被释放
        NSLog(@"Employee: %@", innerSelf);
    }; //初始化myBlock
    self.myBlock(); //调用myBlock
}

@end
