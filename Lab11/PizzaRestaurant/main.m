//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

#import "Manager.h"
#import "SecondManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Kitchen *kitchen = [Kitchen new];
        Manager *noAnchovies = [Manager new];
        SecondManager *alwaysUpgrade = [SecondManager new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"what size do you want ?");
            char str1[100];
            fgets (str1, 100, stdin);
            NSString *inputSize = [[NSString alloc] initWithUTF8String:str1];
            inputSize = [inputSize stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
     
            //input to ENUM
            PizzaSize size;
            if([inputSize isEqualToString:@"small"]){
                 size = small;
            }else if([inputSize isEqualToString:@"midium"]){
                 size = midium;
            }else{
                 size = large;
            }
            
            NSLog(@"what toppings do you want ?");
            char str2[100];
            fgets (str2, 100, stdin);
            NSString *inputToppings = [[NSString alloc] initWithUTF8String:str2];
            inputToppings = [inputToppings stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

//             Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputToppings componentsSeparatedByString:@" "];
            
            kitchen.delegate = noAnchovies;
//            kitchen.delegate = alwaysUpgrade;
            
            [kitchen makePizzaWithSize:size toppings:commandWords];
        }

    }
    return 0;
}

