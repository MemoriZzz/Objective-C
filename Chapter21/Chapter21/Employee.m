//
//  Employee.m
//  Chapter21
//
//  Created by admin on 2021/3/28.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

- (void) setAssets:(NSArray *)a{
    _assets = [a mutableCopy];
}

- (NSArray*) assets{
    return [_assets copy];
}

- (void) addAssets:(Asset *)a{
    if(!_assets) _assets = [[NSMutableArray alloc] init];
    [_assets addObject:a]; //用实例变量call方法addObject
}
- (unsigned int) valueOfAssets{
    unsigned int sum = 0;
    for(Asset *a in _assets) sum += [a value]; //需要知道具体Asset的属性，比如value
    return sum;
}

-(NSString *) description;{ //员工描述
    return [NSString stringWithFormat: @"<Employee%u: $%u in assets.>", self.employeeID, self.valueOfAssets];
}

-(void)dealloc{ //员工销毁
    NSLog(@"deallocating %@", self);
}

@end
