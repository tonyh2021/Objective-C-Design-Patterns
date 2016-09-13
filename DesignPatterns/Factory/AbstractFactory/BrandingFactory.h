//
//  BrandingFactory.h
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hatchback.h"
#import "SUV.h"

@interface BrandingFactory : NSObject

+ (BrandingFactory *)factory;

- (Hatchback *)createHatchback;

- (SUV *)createSUV;

@end
