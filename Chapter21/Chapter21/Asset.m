//
//  Asset.m
//  Chapter21
//
//  Created by admin on 2021/3/28.
//

#import "Asset.h"

@implementation Asset

-(NSString *) description;{ //资产描述
    return [NSString stringWithFormat: @"<%@: $%d>", self.label, self.value];
}

-(void)dealloc{ //资产销毁
    NSLog(@"deallocating %@", self);
}

@end
