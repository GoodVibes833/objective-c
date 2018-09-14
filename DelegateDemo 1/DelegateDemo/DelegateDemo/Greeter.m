//
//  Greeter.m
//  DelegateDemo
//
//  Created by Derrick Park on 2018-09-13.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void) greet {
	if ([_delegate shouldSayHello]) {
		NSLog(@"Hola");
	} else {
		NSLog(@"Adios");
	}
}

@end
