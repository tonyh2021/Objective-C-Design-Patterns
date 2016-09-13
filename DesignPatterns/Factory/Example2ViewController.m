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

#import "Product.h"
#import "ProductOneFactory.h"
#import "ProductTwoFactory.h"

@interface Example2ViewController ()

@end

@implementation Example2ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"工厂模式";
    
    //工厂方法
    //客户端调用
    Product *p = [ProductOneFactory createProduct];
    NSLog(@"%@", p);
    
    Product *p2 = [ProductTwoFactory createProduct];
    NSLog(@"%@", p2);
    
    //抽象工厂
    BrandingFactory *factory = [ToyotaBrandingFactory factory];
    Hatchback *hactchback = [factory createHatchback];
    NSLog(@"%@", hactchback);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSNumber *boolNumber = [NSNumber numberWithBool:YES];
    NSNumber *charNumber = [NSNumber numberWithChar:'a'];
    NSNumber *intNumber = [NSNumber numberWithInteger:2];
    
    NSLog(@"%@", [[boolNumber class] description]);
    NSLog(@"%@", [[charNumber class] description]);
    NSLog(@"%@", [[intNumber class] description]);
}

@end
