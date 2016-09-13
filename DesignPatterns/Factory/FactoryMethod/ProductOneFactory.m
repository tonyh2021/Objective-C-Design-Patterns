//
//  ProductOneFactory.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "ProductOneFactory.h"
#import "ProductOne.h" //共用简单工厂方法中的产品

@implementation ProductOneFactory

+ (Product *)createProduct {
    return [[ProductOne alloc] init];
}

@end
