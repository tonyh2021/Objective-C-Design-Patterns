//
//  LightningChargerAdapter.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/19.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "LightningChargerAdapter.h"

@implementation LightningChargerAdapter

- (void)chargeWithLightning {
    NSLog(@"使用Lightning");
    [super charge];//调用父类的充电方法
}

@end
