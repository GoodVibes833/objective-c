//
//  History.h
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-10.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface History : NSObject

@property (nonatomic, strong) NSMutableArray *commandList;

- (instancetype)init;
-(void) addCommand: newCommand;

@end
