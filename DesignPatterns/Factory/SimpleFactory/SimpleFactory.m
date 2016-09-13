//
//  SimpleFactory.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "SimpleFactory.h"
#import "Product.h"
#import "ProductOne.h"
#import "ProductTwo.h"

@implementation SimpleFactory

//简单工厂模式的主要实现
+ (Product *)createProductWithType:(ProductType)type {
    switch (type) {
        case ProductTypeOne:
            return [[ProductOne alloc] init];
            break;
        case ProductTypeTwo:
            return [[ProductTwo alloc] init];
            break;
//        case ProductTypeThree:
//            return [[ProductThree alloc] init];
//            break;
        default:
            break;
    }
    return nil;
}

//使用字符串参数
+ (Product *)createProductWithString:(NSString *)product; {
    if (!product || [product isEqualToString:@""]) {
        return nil;
    }
    Class class = NSClassFromString(product);
    Product *p = [[class alloc] init];
    if (p) {
        return p;
    }
    return nil;
}

//使用类型参数
+ (Product *)createProductWithClass:(Class)productClass {
    if (!productClass) {
        return nil;
    }
    Product *p = [[productClass alloc] init];
    if (p) {
        return p;
    }
    return nil;
}

@end
