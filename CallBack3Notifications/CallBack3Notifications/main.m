//
//  main.m
//  CallBack3Notifications
//
//  Created by wangyuqing on 2021/3/30.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //use selector
        Logger * logger = [[Logger alloc] init];
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                              selector:@selector(zoneChange:)
                                              name:NSSystemTimeZoneDidChangeNotification
                                              object:nil];
        
        
        
        //use block
//        id observer = //register
        [[NSNotificationCenter defaultCenter]
                            addObserverForName:NSSystemTimeZoneDidChangeNotification
                            object:nil
                            queue:nil
                            usingBlock:^(NSNotification *note){ NSLog(@"2. The system time zone has changed.");}
        ];
        
        //comment this line to see NSLog content.
//        [[NSNotificationCenter defaultCenter] removeObserver:observer]; //remove (remove和register成对出现)
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
