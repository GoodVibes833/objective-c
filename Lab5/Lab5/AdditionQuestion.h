//
//  AdditionQuestion.h
//  Lab5
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "Question.h"

@interface AdditionQuestion : Question

@property (nonatomic, strong) NSString *questionA;
@property (nonatomic, assign) NSInteger answerA;

- (void) generateQuestions;

    
@end
