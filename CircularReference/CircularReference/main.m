//
//  main.m
//  CircularReference
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        A * obja = [[A alloc] init];
        B * objb = [[B alloc] init];
        
        obja.b = objb;
        objb.a = obja;
    }
    sleep(100);
    return 0;
}
