//
//  Person.h
//  ARCDemo
//
//  Created by Alex Jintak Han on 2018-09-18.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"

@interface Person : NSObject

@property(nonatomic,weak) Apartment *apartment;
@property(nonatomic,strong) NSString *name;

- (instancetype)initWithName : (NSString *) name;
- (void)dealloc;



@end
