//
//  Logger.m
//  CallBack1TargetAction
//
//  Created by wangyuqing on 2021/3/29.
//

#import "Logger.h"

@implementation Logger

-(NSString *) lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle: NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle: NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

-(void) updateLastTime:(NSTimer *)t{
    [self setLastTime:[NSDate date]];
    NSLog(@"Just set time to %@", self.lastTimeString);
    
}

@end
