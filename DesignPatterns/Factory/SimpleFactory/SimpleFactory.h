//
//  SimpleFactory.h
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface SimpleFactory : NSObject

//简单工厂模式的主要实现
+ (Product *)createProductWithType:(ProductType)type;

//使用字符串参数
+ (Product *)createProductWithString:(NSString *)product;

//使用类型参数
+ (Product *)createProductWithClass:(Class)productClass;

@end
