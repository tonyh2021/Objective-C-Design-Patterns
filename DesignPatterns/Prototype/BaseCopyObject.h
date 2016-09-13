//
//  BaseCopyObject.h
//  OCDemo
//
//  Created by hanxt on 16/9/5.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCopyObject : NSObject <NSCopying>

- (void)copyOperationWithObject:(id)object;

@end
