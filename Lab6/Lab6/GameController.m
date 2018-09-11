//
//  GameController.m
//  Lab6
//
//  Created by Alex Jintak Han on 2018-09-11.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "GameController.h"
#define MAX_ROLL 5

@interface GameController(){
    @private int rollCount;
    @private int sumOfFaceValue;
}

@end

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:
                        [Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil];
        rollCount = MAX_ROLL;
    }
    
    return self;
}

- (void) roll{
    
    //if I have more than 1 roll counts left, I can roll all 5 dice in the array
    //except for the ones that are held by user
    
    if(rollCount >0){
        for (Dice *die in _displayDice){
            if(![die held]){
                [die roll];
            }
        }
        rollCount --;
        NSLog(@"Remaining Rolls: %d", rollCount);
        
    }else{
        NSLog(@"You can not roll more than %d times", MAX_ROLL);
    }
    
}

- (void) displayCurrentDeck{
    NSMutableString *currentDeck = [NSMutableString string];
    for(Dice *die in _displayDice){
        [currentDeck appendFormat:@" %@ ",[die description]];
    }
    NSLog(@"%@", currentDeck);
}

- (void) holdDie:(NSUInteger) die{
    //1. check if the selected is already held or not
    //2. change the held property of die
    [[_displayDice objectAtIndex:die] setHeld:true];
}

- (void) resetDice{
    //1. iterate through each die, unhold all die
    for(Dice *die in _displayDice){
        [die setHeld:false];
    }

}

- (void) holdAll{
    for(Dice *die in _displayDice){
        [die setHeld:true];
    }
    
}

- (void) displayScore{
    //1. check if the game is done(rollcount)
    // - Game over
    // - print currentDeck, and the score(sum of faceValue)
    //2. if game is not done
    // - print the currentDeck and the score
    

    if(rollCount ==0){
        NSLog(@"GAME OVER");
        for(Dice *die in _displayDice){
            sumOfFaceValue += [die getFaceValue];
        }
        NSLog(@"sumOfFaceValue : %d",sumOfFaceValue);
    }else{
        for(Dice *die in _displayDice){
            sumOfFaceValue += [die getFaceValue];
        }
        NSLog(@"sumOfFaceValue : %d",sumOfFaceValue);
    }

    

}




@end
