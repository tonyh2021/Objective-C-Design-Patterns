//
//  ToyotaBrandingFactory.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "ToyotaBrandingFactory.h"
#import "ToyotaSUV.h"
#import "ToyotaHatchback.h"

@implementation ToyotaBrandingFactory

- (Hatchback *)createHatchback {
    
    ToyotaHatchback *hatchback = [[ToyotaHatchback alloc] init];
    return hatchback;
}

- (SUV *)createSUV {
    
    ToyotaSUV *suv = [[ToyotaSUV alloc] init];
    return suv;
}

@end
