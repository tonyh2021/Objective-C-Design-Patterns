//
//  Example2ViewController.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Example2ViewController.h"
#import "ToyotaBrandingFactory.h"
#import "FordBrandingFactory.h"
#import "BrandingFactory.h"

@interface Example2ViewController ()

@end

@implementation Example2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"工厂模式";
    
    BrandingFactory *factory = [ToyotaBrandingFactory factory];
    Hatchback *hactchback = [factory createHatchback];
    NSLog(@"%@", hactchback);
}

@end
