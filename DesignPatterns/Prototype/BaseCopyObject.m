//
//  BaseCopyObject.m
//  OCDemo
//
//  Created by hanxt on 16/9/5.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject 

//子类不要重载这个方法
- (id)copyWithZone:(NSZone *)zone {
    BaseCopyObject *object = [[[self class] allocWithZone:zone] init];
    [self copyOperationWithObject:object];//赋值操作
    return object;
}

//子类实现此方法，实现赋值操作
- (void)copyOperationWithObject:(id)object {}

@end
