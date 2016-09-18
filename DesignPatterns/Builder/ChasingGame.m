//
//  ChasingGame.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "ChasingGame.h"
#import "Character.h"
#import "CharacterBuilder.h"

@implementation ChasingGame

- (Character *)createPlayer:(CharacterBuilder *)builder {
    [builder buildNewChapteracter];
    [builder buildStrength:50.0];
    [builder buildStamina:25.0];
    [builder buildIntelligence:75.0];
    [builder buildAgility:65.0];
    [builder buildAggressiveness:35.0];
    
    return [builder character];
}

- (Character *)createEnemy:(CharacterBuilder *)builder {
    [builder buildNewChapteracter];
    [builder buildStrength:80.0];
    [builder buildStamina:65.0];
    [builder buildIntelligence:35.0];
    [builder buildAgility:25.0];
    [builder buildAggressiveness:95.0];
    
    return [builder character];
}

@end
