//
//  Logger.m
//  CallBack3Notifications
//
//  Created by wangyuqing on 2021/3/30.
//

#import "Logger.h"

@implementation Logger

-(void)zoneChange:(NSNotificationCenter *)note{
    NSLog(@"The system time zone has changed.");
}
@end
