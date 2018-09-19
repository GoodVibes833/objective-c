//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Alex Jintak Han on 2018-09-17.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "DeliveryService.h"

@interface Manager : DeliveryService<KitchenDelegate>
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

-(void)kitchenDidMakePizza:(Pizza *)pizza;
@end
