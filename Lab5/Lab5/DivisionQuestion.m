//
//  DivisionQuestion.m
//  Lab5
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestions];
    }
    return self;
}


- (void) generateQuestions{
    super.question = [NSString stringWithFormat:@"%lu / %lu = ", (long)super.leftValue,
                      (long)super.rightValue];
    super.answer = super.leftValue / super.rightValue;
}

@end
