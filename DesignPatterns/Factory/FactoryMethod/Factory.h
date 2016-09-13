//
//  Factory.h
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h" //共用简单工厂方法中的产品

@interface Factory : NSObject

+ (Product *)createProduct;

@end
