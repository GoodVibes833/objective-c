//
//  InputHandler.h
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-07.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

+ (NSString *) getUserInputWithLength: (int)maxLength
                           withPrompt: (NSString *)prompt;

@end
