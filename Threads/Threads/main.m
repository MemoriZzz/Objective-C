//
//  main.m
//  Threads
//
//  Created by wangyuqing on 2021/3/31.
//

#import <Foundation/Foundation.h>
#import <pthread.h> //Pthreads

//GCD: Grand Central Dispatch

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //同步串行
        NSLog(@"同步串行-----------------");
        dispatch_queue_t queue1 = dispatch_queue_create("TeST", DISPATCH_QUEUE_SERIAL);
        for(int i=0; i<10; i++){ dispatch_sync(queue1, ^{ NSLog(@"%d %@", i, [NSThread currentThread]); }); }
        
        //异步串行
        NSLog(@"异步串行-----------------");
        dispatch_queue_t queue2 = dispatch_queue_create("TeST", DISPATCH_QUEUE_SERIAL);
        for(int i=0; i<10; i++){ dispatch_async(queue2, ^{ NSLog(@"%d %@", i, [NSThread currentThread]); }); }
        
        //同步并行
        NSLog(@"同步并行-----------------");
        dispatch_queue_t queue3 = dispatch_queue_create("TeST", DISPATCH_QUEUE_CONCURRENT);
        for(int i=0; i<10; i++){ dispatch_sync(queue3, ^{ NSLog(@"%d %@", i, [NSThread currentThread]); }); }
        
        
        //异步并行
        NSLog(@"异步并行-----------------");
        dispatch_queue_t queue4 = dispatch_queue_create("TeST", DISPATCH_QUEUE_CONCURRENT);
        for(int i=0; i<10; i++){ dispatch_async(queue4, ^{ NSLog(@"%d %@", i, [NSThread currentThread]); }); }
        
        [[NSRunLoop currentRunLoop] run];
        
        
    }
    return 0;
}
