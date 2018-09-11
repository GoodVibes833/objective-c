//
//  main.m
//  Lab5
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "MultiplicationQuestion.h"
#import "AdditionQuestion.h"
#import "DivisionQuestion.h"
#import "SubtractionQuestion.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *myScore = [ScoreKeeper new];
        QuestionFactory *questionFactory =[[QuestionFactory alloc]init];
        QuestionManager *questionManager =[[QuestionManager alloc]init];
        
        
        while (gameOn) {
        
            Question *questionType =[questionFactory generateRandomQeustion];
            NSString *question =[questionType question];
            NSInteger answer =[questionType answer];
            NSLog(@" qu : %@, an : %ld",question,answer);
            
            
            NSString *userAnswer =
                [InputHandler getUserInputWithLength:100 withPrompt: question];
            NSInteger userAnsInt = [userAnswer integerValue];
//            [questionManager timeOutput];

            if (answer == userAnsInt){
                NSLog(@"Right!\n");
                [myScore setRight:[myScore right] + 1];

            } else if ([userAnswer isEqualToString:@"quit"]) {
                NSLog(@"%@", [questionManager timeOutput]);
                gameOn = NO;
                
            } else {
                NSLog(@"Wrong!\n");
                [myScore setWrong:[myScore wrong] + 1];
            }
            [myScore scoreRight:[myScore right] andWrong:[myScore wrong]];
            
            
            
        }
    }
    return 0;
}

