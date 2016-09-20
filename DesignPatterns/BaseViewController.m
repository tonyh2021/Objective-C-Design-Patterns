//
//  BaseViewController.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = XTRandomColor;
    self.navigationItem.title = NSStringFromClass([self class]);
    self.automaticallyAdjustsScrollViewInsets = NO;
}

@end
