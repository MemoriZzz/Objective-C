//
//  Employee.h
//  Chapter21
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>
@class Asset;

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject

{
    NSMutableArray *_assets; //声明实例变量 _assets
}
@property (nonatomic) unsigned int employeeID;
@property (nonatomic, copy) NSArray *assets; //声明属性 assets

- (void) addAssets:(Asset *)a; //知道有Asset这个class就可以了
- (unsigned int) valueOfAssets;

@end

NS_ASSUME_NONNULL_END
