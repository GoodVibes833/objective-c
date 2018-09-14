//
//  PaymentGateway.m
//  Lab10
//
//  Created by Alex Jintak Han on 2018-09-14.
//  Copyright © 2018 AlexHan. All rights reserved.
//
// delegator

#import "PaymentGateway.h"

@implementation PaymentGateway

- (BOOL) canProcessPayment{
    NSInteger result = arc4random_uniform(2); // 0 1
    if(result == 0){
        return NO;
    }else{
        return YES;
    }
}

- (void) processPaymentAmount : (NSInteger) input{
    if([self canProcessPayment]){
        [self.delegate processPaymentAmount:input];
        NSLog(@"price is %ld",(long)input);
    }else{
        NSLog(@"CONNECTION UNSTABLE, Sorry can not process now");
    }

}



@end
