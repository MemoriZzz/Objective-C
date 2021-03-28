//
//  MyProtocal.h
//  OCProject
//
//  Created by admin on 2021/3/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyProtocal <NSObject>

@required
- (void) mustDo;

@optional
- (void) couldDo;

@end

NS_ASSUME_NONNULL_END
