//
//  main.m
//  BlockObject
//
//  Created by wangyuqing on 2021/3/30.
//

#import <Foundation/Foundation.h>
typedef void (^MyType) (id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Objective-C Blocks - raywenderlich.com （YouTube）
        NSLog(@"Objective-C Blocks - raywenderlich.com （YouTube）------");
        NSArray *thePowerpuffGirls = @[@"Blossom花花", @"Bubbles泡泡", @"Buttercup毛毛"];
        [thePowerpuffGirls enumerateObjectsUsingBlock:
         ^(id element, NSUInteger idx, BOOL *stop) { NSLog(@"GIRL NAME: %@", (NSString*)element); }
        ];
        
        
        
        //Objective-C 编程 第28章
        NSLog(@"\n\n\nObjective-C 编程 第28章-------------------");
        NSArray *oldStrings = [NSArray arrayWithObjects:@"apple", @"orange", @"banana", nil];
        NSLog(@"old strings: %@", oldStrings);
        NSMutableArray *newStrings = [[NSMutableArray alloc] init];
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        //声明block变量
        MyType devowelizer;

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
