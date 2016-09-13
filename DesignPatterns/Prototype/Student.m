//
//  Student.m
//  OCDemo
//
//  Created by hanxt on 16/9/5.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Student.h"

@implementation Student

// NSCoding实现
MJExtensionCodingImplementation

- (void)copyOperationWithObject:(Student *)object {
    [super copyOperationWithObject:object];
    object.size = self.size;
    object.teacher = [self.teacher copy];
    object.address = self.address;
    object.friends = [[NSArray alloc] initWithArray:self.friends copyItems:YES];
    object.girlfriends = [[NSMutableArray alloc] initWithArray:self.girlfriends copyItems:YES];
    object.others = [NSKeyedUnarchiver unarchiveObjectWithData:
                     [NSKeyedArchiver archivedDataWithRootObject:self.others]];
}
@end
