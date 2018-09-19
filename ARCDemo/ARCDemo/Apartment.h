//
//  Apartment.h
//  ARCDemo
//
//  Created by Alex Jintak Han on 2018-09-18.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Apartment : NSObject

@property(nonatomic,strong) Person *tenant;
@property(nonatomic,strong) NSString *unit;
- (instancetype)initWithUnit: (NSString*)unit;
- (void)dealloc;



@end
