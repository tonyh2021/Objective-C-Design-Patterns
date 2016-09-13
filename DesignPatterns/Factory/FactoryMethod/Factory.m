//
//  Factory.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Factory.h"

@implementation Factory

+ (Product *)createProduct {
    return [[Product alloc] init];//如果Product是抽象的，那么这里可以返回nil
}

@end
