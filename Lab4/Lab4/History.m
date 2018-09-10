//
//  History.m
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "History.h"

@implementation History

- (instancetype)init
{
    self = [super init];
    if (self) {
        _commandList = [NSMutableArray new];
    }
    
    return self;
}

-(void) addCommand: newCommand{
    
    [_commandList addObject: newCommand];
}

-(NSString *)description
{
    int size = (int)[_commandList count];
    NSLog(@"%d\n", size);
    
    if(size ==1)
    {
        return [NSString stringWithFormat:@"%@\n",[_commandList objectAtIndex:0]];
    };
    
    if(size ==2)
    {
       return [NSString stringWithFormat:@"%@\n%@\n",[_commandList objectAtIndex:size-2],[_commandList objectAtIndex:size-1]];
    };
    
    return [NSString stringWithFormat:@"%@\n%@\n%@\n",
            [_commandList objectAtIndex:size-3],
            [_commandList objectAtIndex:size-2],
            [_commandList objectAtIndex:size-1]];
}

@end
