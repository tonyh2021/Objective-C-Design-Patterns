//
//  Singleton.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static id sharedSingleton = nil;

+ (id)allocWithZone:(struct _NSZone *)zone {
    if (!sharedSingleton) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            sharedSingleton = [super allocWithZone:zone];
        });
    }
    return sharedSingleton;
}

- (id)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSingleton = [super init];
    });
    return sharedSingleton;
}

+ (instancetype)sharedInstance {
    return [[self alloc] init];
}

+ (id)copyWithZone:(struct _NSZone *)zone {
    return sharedSingleton;
}

+ (id)mutableCopyWithZone:(struct _NSZone *)zone {
    return sharedSingleton;
}
@end
