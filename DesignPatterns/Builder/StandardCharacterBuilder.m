//
//  StandardCharacterBuilder.m
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import "StandardCharacterBuilder.h"
#import "Character.h"

@implementation StandardCharacterBuilder

- (CharacterBuilder *)buildStrength:(float)value {
    self.character.protection *= value;//更新角色的防御值
    self.character.power *= value;//更新角色的攻击值
    return [super buildStrength:value];//设定力量并返回此生成器
}

- (CharacterBuilder *)buildStamina:(float)value {
    self.character.protection *= value;//更新角色的防御值
    self.character.power *= value;//更新角色的攻击值
    return [super buildStamina:value];//设定耐力并返回此生成器
}

- (CharacterBuilder *)buildIntelligence:(float)value {
    self.character.protection *= value;//更新角色的防御值
    self.character.power /= value;//更新角色的攻击值
    return [super buildIntelligence:value];//设定智力并返回此生成器
}

- (CharacterBuilder *)buildAgility:(float)value {
    self.character.protection *= value;//更新角色的防御值
    self.character.power /= value;//更新角色的攻击值
    return [super buildAgility:value];//设定敏捷并返回此生成器
}

- (CharacterBuilder *)buildAggressiveness:(float)value {
    self.character.protection /= value;//更新角色的防御值
    self.character.power *= value;//更新角色的攻击值
    return [super buildAgility:value];//设定攻击力并返回此生成器
}

@end
