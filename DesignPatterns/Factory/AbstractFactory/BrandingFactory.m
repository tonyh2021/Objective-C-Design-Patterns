//
//  BrandingFactory.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "BrandingFactory.h"
#import "ToyotaBrandingFactory.h"
#import "FordBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory {
    
    if ([[self class] isSubclassOfClass:[ToyotaBrandingFactory class]]) {
        return [[ToyotaBrandingFactory alloc] init];
    } else if ([[self class] isSubclassOfClass:[FordBrandingFactory class]]) {
        return [[FordBrandingFactory alloc] init];
    } else {
        return nil;
    }
}

- (Hatchback *)createHatchback {
    
    return nil;
}

- (SUV *)createSUV {
    
    return nil;
}

@end
