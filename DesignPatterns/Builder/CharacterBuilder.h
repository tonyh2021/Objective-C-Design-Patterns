//
//  CharacterBuilder.h
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Character;

@interface CharacterBuilder : NSObject

@property (nonatomic, strong) Character *character;

- (CharacterBuilder *)buildNewChapteracter;
- (CharacterBuilder *)buildStrength:(float)value;
- (CharacterBuilder *)buildStamina:(float)value;
- (CharacterBuilder *)buildIntelligence:(float)value;
- (CharacterBuilder *)buildAgility:(float)value;
- (CharacterBuilder *)buildAggressiveness:(float)value;

@end
