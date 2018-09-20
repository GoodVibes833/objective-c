//
//  Box.h
//  Lab2
//
//  Created by Alex Jintak Han on 2018-09-20.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;

- (instancetype)initWith :(float) height andWidth:(float)width andlength:(float)length;
-(float) calculateVolume;
-(float) howManyneeded : (float) target;
@end
