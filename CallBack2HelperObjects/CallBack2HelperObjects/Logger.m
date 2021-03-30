//
//  Logger.m
//  CallBack2HelperObjects
//
//  Created by wangyuqing on 2021/3/30.
//

#import "Logger.h"

@implementation Logger

//收到数据时候会被调用
-(void)connection:(NSURLConnection *) connection didReceiveData:(NSData *)data{
    NSLog(@"received %lu bytes", [data length]);
    if(!_incomingData) _incomingData = [[NSMutableData alloc] init];
    [_incomingData appendData: data];
}

//处理完数据后会被调用
-(void)connectionDidFinishLoading: (NSURLConnection *) connection{
    NSLog(@"完成");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
}

//获取数据失败后会被调用
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"错误: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end
