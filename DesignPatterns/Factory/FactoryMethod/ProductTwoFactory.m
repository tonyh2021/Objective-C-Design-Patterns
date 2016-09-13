//
//  ProductTwoFactory.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "ProductTwoFactory.h"
#import "ProductTwo.h"

@implementation ProductTwoFactory

+ (Product *)createProduct {
    return [[ProductTwo alloc] init];
}

@end
