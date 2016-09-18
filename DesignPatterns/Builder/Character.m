//
//  Character.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Character.h"

@implementation Character

- (instancetype)init {
    self = [super init];
    if (self) {
        self.protection = 1.f;
        self.power = 1.f;
        self.strength = 1.f;
        self.stamina = 1.f;
        self.intelligence = 1.f;
        self.agility = 1.f;
        self.aggressiveness = 1.f;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@:%p>: %@", [self class], &self, @{@"protection":@(self.protection), @"power":@(self.power), @"strength":@(self.strength), @"stamina":@(self.stamina), @"intelligence":@(self.intelligence), @"agility":@(self.agility), @"aggressiveness":@(self.aggressiveness)}];
}

- (NSString *)debugDescription {
    return [self description];
}

@end
