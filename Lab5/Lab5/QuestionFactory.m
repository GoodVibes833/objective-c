//
//  QuestionFactory.m
//  Lab5
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AddtionQuestion",@"SubtractionQuestion",
                           @"MultiplicationQuestion",@"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQeustion{
//    return an instance of + - x / question object
    NSString *type = [_questionTypes objectAtIndex: arc4random_uniform(4)];

//    [[AdditionQeustion alloc] init];
//    takes string return class
    return [[NSClassFromString(type) alloc] init];
    
}
@end
