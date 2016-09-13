//
//  FordBrandingFactory.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "FordBrandingFactory.h"
#import "FordHatchback.h"
#import "FordSUV.h"

@implementation FordBrandingFactory

- (Hatchback *)createHatchback {
    
    FordHatchback *hatchback = [[FordHatchback alloc] init];
    return hatchback;
}

- (SUV *)createSUV {
    
    FordSUV *suv = [[FordSUV alloc] init];
    return suv;
}

@end
