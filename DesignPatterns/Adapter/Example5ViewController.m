//
//  Example5ViewController.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/19.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Example5ViewController.h"
#import "Charger.h"
#import "LightningChargerAdapter.h"
#import "MicroUSBAdapter.h"

@interface Example5ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation Example5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"适配器模式";
    self.automaticallyAdjustsScrollViewInsets = YES;
    
    self.tableView = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        tableView.delegate = self;
        tableView.dataSource = self;
        [self.view addSubview:tableView];
        tableView;
    });
}

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"CellIdentifier";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Cell%@",@(indexPath.row+1)];
    
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Class cls = NSClassFromString([NSString stringWithFormat:@"Cell%@", @(indexPath.row+1)] );
    
    if (cls) {
        [self.navigationController pushViewController:[cls new] animated:YES];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    LightningChargerAdapter *charger = [[LightningChargerAdapter alloc] init];
    [charger chargeWithLightning];
    
    MicroUSBAdapter *adapter = [[MicroUSBAdapter alloc] init];
    [adapter chargeWithMicroUSB];
}

@end
