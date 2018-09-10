//
//  ContactList.m
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-07.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray new];
    }
    return self;
}

-(void) addContact: (Contact *) newContact{
    [_contactList addObject: newContact];
}

- (NSString *)description
{
    
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (Contact *contact in _contactList){
        NSString *contractStr =  [NSString stringWithFormat:@"%d : %@\n",count,contact];
        count ++;
        [result appendString: contractStr];
    }
    return result;
};



@end