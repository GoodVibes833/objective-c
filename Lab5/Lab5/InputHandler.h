//
//  InputHandler.h
//  Lab5
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt;

@end
