//
//  Example1ViewController.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/13.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Example1ViewController.h"
#import "Person.h"
#import "Student.h"

@interface Example1ViewController ()

@end

@implementation Example1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"原型模式";
    
    Person *p1 = [[Person alloc] init];
    p1.name = @"name1";
    p1.age = 29;
    
    Person *p2 = [p1 copy];
    
    NSLog(@"%@:%@, %d", p1, p1.name, p1.age);
    NSLog(@"%@:%@, %d", p2, p2.name, p2.age);
    
    Student *s1 = [[Student alloc] init];
    s1.name = @"s1";
    s1.age = 15;
    s1.address = @"Beijing";
    s1.size = CGSizeMake(175, 65);
    
    Student *s2 = [s1 copy];
    
    NSLog(@"%@:%@, %d, %@, %@", s1, s1.name, s1.age, s1.address, NSStringFromCGSize(s1.size));
    NSLog(@"%@:%@, %d, %@, %@", s2, s2.name, s2.age, s2.address, NSStringFromCGSize(s2.size));
}

@end
