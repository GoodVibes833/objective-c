//
//  main.m
//  Lab6
//
//  Created by Alex Jintak Han on 2018-09-11.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *player1 =[[GameController alloc]init];
        
    
        while(true){
            
            NSString *input = [InputHandler getUserInputWithLength:10
                                                withPrompt:@"'roll' 'quit' 'hold' 'holdAll' 'resetDice' 'display'" ];
            if([input isEqualToString:@"roll"]){
                [player1 roll];
                [player1 displayCurrentDeck];

            }else if([input isEqualToString:@"quit"]){
                break;
                
            }else if([input isEqualToString:@"hold"]){
                NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\n die to hold?" ];
                NSInteger myInt = [input integerValue];
                [player1 holdDie:myInt-1];
                [player1 displayCurrentDeck];
                
                
            }else if([input isEqualToString:@"resetDice"]){
                [player1 resetDice];
                [player1 displayCurrentDeck];
                
            }else if([input isEqualToString:@"holdAll"]){
                [player1 holdAll];
                [player1 displayCurrentDeck];
                
            }else if([input isEqualToString:@"display"]){
                [player1 displayScore];
                [player1 displayCurrentDeck];
                
            }else{
                NSLog(@"typo");
            }
        }}
    return 0;

}
