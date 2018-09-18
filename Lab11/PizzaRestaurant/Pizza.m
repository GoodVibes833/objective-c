//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Alex Jintak Han on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

//default
- (instancetype)initWithSize: (PizzaSize) size toppings:(NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (Pizza *) largePepperoni{
    return [[Pizza alloc]initWithSize:large toppings:@[@"pepperoni",@"ham",@"cheese"]];
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size{
    return [[Pizza alloc]initWithSize:size toppings:@[@"chicken",@"beef",@"pork"]];
}

- (NSString *)description
{
    NSString *pizzaSize;
    switch (_size) {
        case small:
            pizzaSize = @"samll";
            break;
        case midium:
            pizzaSize = @"midium";
            break;
        case large:
            pizzaSize = @"large";
            break;
        default:
            break;
    }
    return [NSString stringWithFormat:@"Size : %@, Toppings %@,%@,%@:", pizzaSize,_toppings[0],_toppings[1],_toppings[2]];
}


@end
