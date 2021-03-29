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
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                  target:logger
                                  selector:@selector(updateLastTime:)
                                  userInfo:nil
                                  repeats:YES];
        
        
        [[NSRunLoop currentRunLoop] run]; //持续等待事件发生...
        
        
    }
    return 0;
}
