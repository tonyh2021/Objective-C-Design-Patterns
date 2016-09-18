//
//  ChasingGame.h
//  DesignPatterns
//
//  Created by hanxt on 16/9/18.
//  Copyright © 2016年 hanxt. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Character;
@class CharacterBuilder;

@interface ChasingGame : NSObject

- (Character *)createPlayer:(CharacterBuilder *)builder;
- (Character *)createEnemy:(CharacterBuilder *)builder;

@end
