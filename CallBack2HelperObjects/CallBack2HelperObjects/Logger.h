//
//  Logger.h
//  CallBack2HelperObjects
//
//  Created by wangyuqing on 2021/3/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Logger : NSObject
        <NSURLConnectionDelegate, NSURLConnectionDataDelegate> //protocol

{
    NSMutableData * _incomingData;
}

//作为NSURLConnection的委托对象，Logger要遇到三种情况需要响应：
-(void)connection:(NSURLConnection *) connection didReceiveData:(NSData *)data; //收到data
-(void)connectionDidFinishLoading: (NSURLConnection *) connection; //最后的data也处理完毕
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error; //出错

@end

NS_ASSUME_NONNULL_END
