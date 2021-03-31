//
//  Employee.h
//  UseSelfInBlock
//
//  Created by wangyuqing on 2021/3/30.
//

#import <Foundation/Foundation.h>
typedef  void (^Block) (void);

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject

@property (nonatomic, copy) Block myBlock;

-(void) test;

@end
NS_ASSUME_NONNULL_END
