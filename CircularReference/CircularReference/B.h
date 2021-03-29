//
//  B.h
//  CircularReference
//
//  Created by wangyuqing on 2021/3/29.
//

#import <Foundation/Foundation.h>
#import "A.h"

NS_ASSUME_NONNULL_BEGIN

@interface B : NSObject

@property (nonatomic) NSObject* a;
//@property (nonatomic, weak) NSObject* a;

@end

NS_ASSUME_NONNULL_END
