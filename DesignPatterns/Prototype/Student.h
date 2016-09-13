//
//  Student.h
//  OCDemo
//
//  Created by hanxt on 16/9/5.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Person.h"
#import <UIKit/UIKit.h>
#import "MJExtension.h"

@interface Student : Person

@property (nonatomic, copy) NSString *address;

@property (nonatomic, assign) CGSize size;

@property (nonatomic, strong) Person *teacher;

@property (nonatomic, copy) NSArray *friends;

@property (nonatomic, strong) NSMutableArray *girlfriends;

@property (nonatomic, copy) NSArray *others;
@end
