//
//  Greeter.h
//  DelegateDemo
//
//  Created by Derrick Park on 2018-09-13.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreeterDelegate.h"
@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;
- (void) greet;

@end
