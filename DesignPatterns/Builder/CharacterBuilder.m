//
//  CharacterBuilder.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "CharacterBuilder.h"
#import "Character.h"

@implementation CharacterBuilder

- (CharacterBuilder *)buildNewChapteracter {
    self.character = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *)buildStrength:(float)value {
    self.character.strength = value;
    return self;
}

- (CharacterBuilder *)buildStamina:(float)value {
    self.character.stamina = value;
    return self;
}

- (CharacterBuilder *)buildIntelligence:(float)value {
    self.character.intelligence = value;
    return self;
}

- (CharacterBuilder *)buildAgility:(float)value {
    self.character.agility = value;
    return self;
}

- (CharacterBuilder *)buildAggressiveness:(float)value {
    self.character.aggressiveness = value;
    return self;
}

@end
