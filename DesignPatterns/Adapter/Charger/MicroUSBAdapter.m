//
//  MicroUSBAdapter.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/19.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "MicroUSBAdapter.h"

@interface MicroUSBAdapter() <MicroUSBAdapterProtocol>

@property (nonatomic, strong) Charger *charger;

@end


@implementation MicroUSBAdapter

- (void)chargeWithMicroUSB {
    NSLog(@"使用MicroUSB");
    self.charger = [[Charger alloc] init];
    [self.charger charge];
}

@end
