//
//  main.m
//  Lab10
//
//  Created by Alex Jintak Han on 2018-09-14.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger rand = arc4random_uniform(901)+100;

        NSLog(@"Thank you for shopping at Acme.com Your total today is %ld", (long)rand);
        NSLog(@"Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon");
        
        char str[100];
        fgets (str, 100, stdin);
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        NSInteger myInt = [inputString integerValue];

        
        NSLog(@"rand is %ld, Input was %ld", (long)rand,(long)myInt);

        PaymentGateway *paymentGayeway = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        
        switch (myInt) {
            case 1:
                paymentGayeway.delegate = paypal;
                [paymentGayeway processPaymentAmount:rand];
                break;
            case 2:
                paymentGayeway.delegate = stripe;
                [paymentGayeway processPaymentAmount:rand];

                break;
            case 3:
                paymentGayeway.delegate = amazon;
                [paymentGayeway processPaymentAmount:rand];

                break;
                
            default:
                break;
        }
        
    }
    return 0;
}
