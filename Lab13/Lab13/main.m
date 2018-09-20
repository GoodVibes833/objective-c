//
//  main.m
//  Lab13
//
//  Created by Alex Jintak Han on 2018-09-19.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *question = @"type input : ";
        NSString *userAnswer =
        [InputHandler getUserInputWithLength:100 withPrompt: question];
        
        // [ aaa, sss ]
        NSMutableArray *commandWords = [[userAnswer componentsSeparatedByString:@" "] mutableCopy];
        
        NSString *firstString = commandWords[0];
//        NSString *secondString = commandWords[1];
//        NSString *thirdString = commandWords[2];
        NSLog(@"%@", commandWords);
        
        NSString *consonantsString = @"abcdefghijklmnopqrstuvwxyz";
        NSString *vowelsString = @"aeiou";


        

        
    }
    return 0;
}
