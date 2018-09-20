//
//  Box.m
//  Lab2
//
//  Created by Alex Jintak Han on 2018-09-20.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWith :(float) height andWidth:(float)width andlength:(float)length
{
    self = [super init];
    if (self) {
        _width=width;
        _height=height;
        _length=length;
    }
    return self;
}

-(float) calculateVolume{
    
    NSLog(@"volume is : %f",self.width * self.length *self.height);
    return self.width * self.length *self.height;
}

-(float) howManyneeded : (float) target{
    
    NSLog(@"volume is : %f",self.width * self.length *self.height);
    NSLog(@"new volume is : %f",target);
    NSLog(@"%fea needed", target/self.width * self.length *self.height);
    
    return target/self.width * self.length *self.height;
}


@end
