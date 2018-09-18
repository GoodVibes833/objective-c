//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Alex Jintak Han on 2018-09-17.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//
// always upgrade

#import "SecondManager.h"

@implementation SecondManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    NSLog(@"Manager2 delegate selected");
    return true;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    NSLog(@"always upgrade yeah!");
    return true;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"pizza made");
    NSLog(@"%@", pizza);
    
}

@end

