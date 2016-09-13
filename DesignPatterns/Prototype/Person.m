//
//  Person.m
//  OCDemo
//
//  Created by hanxt on 16/9/5.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)copyOperationWithObject:(Person *)object {
    object.name = self.name;
    object.age = self.age;
}
//- (id)copyWithZone:(NSZone *)zone {
//    Person *p = [[[self class] allocWithZone:zone] init];
//    p.name = self.name;//需要设置属性
//    p.age = self.age;
//    return p;
//}

@end
