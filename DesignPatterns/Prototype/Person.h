//
//  Person.h
//  OCDemo
//
//  Created by hanxt on 16/9/5.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCopyObject.h"

@interface Person : BaseCopyObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
@end
