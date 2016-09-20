//
//  MicroUSBAdapter.h
//  DesignPatterns
//
//  Created by hanxt on 16/9/19.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Charger.h"

@protocol MicroUSBAdapterProtocol <NSObject>

@required
- (void)chargeWithMicroUSB;

@end

@interface MicroUSBAdapter : NSObject

- (void)chargeWithMicroUSB;

@end
