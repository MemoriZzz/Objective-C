//
//  Pen.h
//  OCProject
//
//  Created by admin on 2021/3/26.
//

#ifndef Pen_h
#define Pen_h
#import <Foundation/Foundation.h>
#import "MyProtocal.h"

@interface Animal: NSObject <MyProtocal>

{
    @public
    NSString* _name;
    int _age;
    NSArray* _array;
}

//@property
@property (nonatomic, copy) NSString *name; //NSString
@property(atomic,assign) int age; //primitive
@property(atomic, retain) NSArray *array; //other obj

+ (void) eat_static;

- (id)init;  //override init
- (id)initWithAge:(int)age; //customized init method

- (void) eat;
- (void) getRed: (float)red Green: (float)green Blue: (float)blue;
- (NSString*) getName: (NSString*) name;
- (void) printName: (NSString*) name;
- (void) getPrivateAttribute;

@end

#endif /* Pen_h */
