//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Alex Jintak Han on 2018-09-18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

-(void) deliverPizza:(Pizza *)pizza;
-(NSArray*) detailArray;
@end
