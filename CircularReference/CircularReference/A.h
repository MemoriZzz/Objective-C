//
//  A.h
//  CircularReference
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import "B.h"

NS_ASSUME_NONNULL_BEGIN

@interface A : NSObject

@property (nonatomic) NSObject* b;

@end

NS_ASSUME_NONNULL_END
