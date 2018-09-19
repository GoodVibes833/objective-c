//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Alex Jintak Han on 2018-09-18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//
//handle messages from the manager of the restaurant.

#import "DeliveryService.h"

@implementation DeliveryService

-(void) deliverPizza:(Pizza *)pizza{
    NSLog(@"pizza delivered to Car");

    DeliveryCar *deliverCar = [DeliveryCar new];
    [deliverCar deliverPizza:pizza];
}

//-(NSArray*) detailArray:(Pizza *)pizza{
//
//
//}

@end
