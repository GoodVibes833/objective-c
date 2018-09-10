//
//  ScoreKeeper.h
//  Lab5
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic, assign) int right;
@property (nonatomic, assign) int wrong;
- (void) scoreRight: (int) right andWrong: (int) wrong;

@end
