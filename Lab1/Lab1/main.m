//
//  main.m
//  Lab1
//
//  Created by Alex Jintak Han on 2018-09-20.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // 255 unit long array of characters
        char inputChars[255];
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        // print as a c string
        printf("Your string is %s\n", inputChars);
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        //1. Uppercase
        NSString *uppercase = [inputString uppercaseString];
        NSLog(@"uppercase : %@ ", uppercase);
        //2. Lowercase
        NSString *lowercase = [inputString lowercaseString];
        NSLog(@"lowercase : %@ ", lowercase);
        //3. Numberize
        NSInteger numberize = [inputString integerValue];
        NSLog(@"numberize : %ld ", (long)numberize);

        //4. Canadianize

        NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
        NSLog(@"canadianize : %@ ", canadianize);

        
        //5. Respond
        NSString *theCharacter = [NSString stringWithFormat:@"%c", [inputString characterAtIndex:[inputString length]-2]];
        if([theCharacter isEqualToString:@"?"]){
            NSLog(@"I don't know");
        }else if([theCharacter isEqualToString:@"!"]){
            NSLog(@"Whoa, calm down!");
        }

        //6. De-Space-It
        NSString *str = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"de-space : %@",str);
    }
    return 0;
}
