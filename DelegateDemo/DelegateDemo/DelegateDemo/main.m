//
//  main.m
//  DelegateDemo
//
//  Created by Derrick Park on 2018-09-13.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "LovelyPerson.h"
#import "GrumpyPerson.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		GrumpyPerson *javier = [GrumpyPerson new];
		LovelyPerson *giada = [LovelyPerson new];
		
		Greeter *kenta = [Greeter new];
		kenta.delegate = giada;
		
		[kenta greet];
		
		
		
	}
	return 0;
}
