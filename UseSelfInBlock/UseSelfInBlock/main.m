//
//  main.m
//  UseSelfInBlock
//
//  Created by wangyuqing on 2021/3/30.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
typedef void(^Block) (void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Employee *e = [[Employee alloc] init];
        [e test];
    }
    return 0;
}
