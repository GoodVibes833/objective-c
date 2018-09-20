//
//  main.m
//  Lab2
//
//  Created by Alex Jintak Han on 2018-09-20.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc]initWith:2 andWidth:2 andlength:2];
        [box1 calculateVolume];
        [box1 howManyneeded:4];
        
    }
    return 0;
}
