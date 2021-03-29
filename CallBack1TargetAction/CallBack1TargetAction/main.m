//
//  main.m
//  CallBack1TargetAction
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Logger *logger = [[Logger alloc]init];
        
        [NSTimer scheduledTimerWithTimeInterval:1.0
                 target:logger //tell logger
                 selector:@selector(updateLastTime:)//to call func "updateLastTime"
                 userInfo:nil
                 repeats:YES]; //repeat
        
        
        [[NSRunLoop currentRunLoop] run]; //持续等待事件发生...
        
        
    }
    return 0;
}
