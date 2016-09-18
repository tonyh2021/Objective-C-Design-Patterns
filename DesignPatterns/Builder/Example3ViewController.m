//
//  Example3ViewController.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "Example3ViewController.h"
#import "StandardCharacterBuilder.h"
#import "ChasingGame.h"
#import "Character.h"

@implementation Example3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"生成器模式";

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    ChasingGame *game = [[ChasingGame alloc] init];
    CharacterBuilder *characterBuilder = [[StandardCharacterBuilder alloc] init];
    Character *player = [game createPlayer:characterBuilder];
    Character *enemy = [game createEnemy:characterBuilder];
    
    NSLog(@"%@", player);
    NSLog(@"%@", enemy);
}

@end
