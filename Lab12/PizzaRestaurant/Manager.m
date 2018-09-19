//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Alex Jintak Han on 2018-09-17.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

//So the implementation of
//shouldMakePizza should return NO if any of the toppings are anchovies. This
//manager does not upgrade orders, and doesn't do anything after the kitchen
//makes a pizza.

#import "Manager.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if([toppings containsObject:@"anchovies"]){
        NSLog(@"I hate anchovies, don't even make!");
        return false;
    }
    DeliveryService *deliveryService = [DeliveryService new];
    Pizza *pizza = [[Pizza alloc]initWithSize:size toppings:toppings];
    [deliveryService deliverPizza:pizza];
    return true;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    NSLog(@"no upgrade");
    return false;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"pizza made");
}

@end
