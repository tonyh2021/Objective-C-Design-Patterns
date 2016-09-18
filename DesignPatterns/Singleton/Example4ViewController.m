//
//  Example4ViewController.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Example4ViewController.h"
#import "Singleton.h"
#import "SmartSingleton.h"

@interface Example4ViewController ()

@end

@implementation Example4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"单例模式";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Singleton *singleton = [Singleton sharedInstance];
    NSLog(@"%@", singleton);
    
    SmartSingleton *smartSingleton = [SmartSingleton sharedSmartSingleton];
    NSLog(@"%@", smartSingleton);
    
    NSFileManager *fm = [NSFileManager defaultManager];
    NSLog(@"%@", fm);
    
    NSFileManager *fm2 = [NSFileManager defaultManager];
    NSLog(@"%@", fm2);
}


@end
