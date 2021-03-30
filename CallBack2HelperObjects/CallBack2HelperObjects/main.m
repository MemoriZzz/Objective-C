//
//  main.m
//  CallBack2HelperObjects
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Logger * logger = [[Logger alloc] init];
        NSURL * url = [NSURL URLWithString:@"https://www.amazon.com"]; //success
//        NSURL * url = [NSURL URLWithString:@"https://www.rachel.com"]; //fail
        NSURLRequest * request = [NSURLRequest requestWithURL: url];
        
        //委托logger传递request
        [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
