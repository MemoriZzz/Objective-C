//
//  Pen.m
//  OCProject
//
//  Created by admin on 2021/3/26.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

#pragma mark Class Extension
@interface Animal()
@property (nonatomic, strong) NSString *privateAttribute;
@end

#pragma mark Class Implementation
@implementation Animal

#pragma mark properies

@synthesize privateAttribute;

@synthesize name = _name;
@synthesize age = _age;
@synthesize array = _array;

#pragma mark class methods
+ (void) eat_static{
    NSLog(@"eating...call class method");
}

- (id)init{ //override init
    
    self.privateAttribute = @"private attribute"; //Extension
    
    self = [super init];
    if(self){ //self!=nil
        _age = 111;
    }
    return self;
}

- (id)initWithAge:(int)num{
    self = [super init];
    if(self){
        self->_age = num;
    }
    return self;
}

#pragma mark instance methods
- (void) eat{
    NSLog(@"eating...call instance method");
}

- (void) getRed: (float)red Green: (float)green Blue: (float)blue;{
    NSLog(@"red:%f, green:%f, blue:%f",red, green, blue);
}

- (NSString*) getName: (NSString*) name{
    return name;
}
- (void) printName: (NSString*) name{
    NSLog(@"My name is %@.", name);
}

- (void) getPrivateAttribute{
    NSLog(@"PRIVATE INFORMATION: %@", self.privateAttribute);
}

- (void) mustDo{
    NSLog(@"Calling a required method...");
}

- (void) couldDo{
    NSLog(@"Calling a optional method...");
}

@end
