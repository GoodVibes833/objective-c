//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "SecondManager.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *pizza = [[Pizza alloc]initWithSize:size toppings:toppings];
    Kitchen *kitchen = [Kitchen new];
    
    
    if(!_delegate){
        NSLog(@"No manager selected");
        return nil;
        
    }else{
        if([_delegate kitchenShouldUpgradeOrder:kitchen]){
            NSLog(@"upgrade true");
            Pizza *pizza2 = [[Pizza alloc]initWithSize:large toppings:toppings];
            [_delegate kitchen:kitchen shouldMakePizzaOfSize:large andToppings:toppings];
            return pizza2;
        }else{
            NSLog(@"upgrade false");
            [_delegate kitchen:kitchen shouldMakePizzaOfSize:size andToppings:toppings];
            return pizza;

        }
        

    }
    
    
}


@end
