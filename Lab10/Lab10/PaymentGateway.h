//
//  PaymentGateway.h
//  Lab10
//
//  Created by Alex Jintak Han on 2018-09-14.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentDelegate.h"

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void) processPaymentAmount : (NSInteger) input;
- (BOOL) canProcessPayment;

@end
