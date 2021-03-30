//
//  main.m
//  BlockObject
//
//  Created by wangyuqing on 2021/3/30.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *oldStrings = [NSArray arrayWithObjects:@"apple", @"orange", @"banana", nil];
        NSLog(@"old strings: %@", oldStrings);
        NSMutableArray *newStrings = [[NSMutableArray alloc] init];
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        //声明block变量
        void (^devowelizer)(id, NSUInteger, BOOL *stop);

        //将block对象赋值给变量
        devowelizer = ^(id element, NSUInteger i, BOOL *stop){
//            NSLog(@"element: %@",element); //三个element分别是apple, orange, banana
//            NSLog(@"i: %lu", i); //三个i分别是0, 1, 2
//            NSLog(@"stop: %@", *stop? @"YES":@"NO"); //stop的默认值是NO
//            *stop = YES; //可以手动设置为YES
            NSMutableString *newString = [NSMutableString stringWithString:element];
            for(NSString *c in vowels){
                [newString replaceOccurrencesOfString:c withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [newString length])];
            }
            [newStrings addObject:newString];
        };
        
        //enumerateObjectsUsingBlock要求一种格式，所以devowelizer必须写成这种格式（详见documentation）
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings: %@", newStrings);
    }
    return 0;
}
