//
//  Logger.h
//  CallBack1TargetAction
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Logger : NSObject

@property (nonatomic) NSDate * lastTime;

-(NSString *) lastTimeString;
-(void) updateLastTime:(NSTimer *)t;

@end

NS_ASSUME_NONNULL_END
