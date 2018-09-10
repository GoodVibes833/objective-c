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
    
    for (Contact *contact in _contactList){
        if(contact.email == newContact.email)
        {
            NSLog(@"email already exists");
            break;
        }
    }
    [_contactList addObject: newContact];
}

- (NSString *) findId: (NSString *) inputId
{
    
    NSMutableString *result = [NSMutableString new];
    for (Contact *contact in _contactList){
        if(contact.id == inputId)
        {
        NSString *contractStr =  [NSString stringWithFormat:@"%@\n",contact];
        [result appendString: contractStr];
        NSLog(@"\n%@",result);
        return result;

        }
    }
    NSLog(@"\n%@",result);
    return result;
}

- (NSString *) findName: (NSString *) inputName
{
    
    NSMutableString *result = [NSMutableString new];
    for (Contact *contact in _contactList){
        if(contact.name == inputName)
        {
            NSString *contractStr =  [NSString stringWithFormat:@"%@\n",contact];
            [result appendString: contractStr];
            NSLog(@"\n%@",result);
            return result;
            
        }
    }
    NSLog(@"\n%@",result);
    return result;
}


- (NSString *)description
{
    
    NSMutableString *result = [NSMutableString new];
    for (Contact *contact in _contactList){
        NSString *contractStr =  [NSString stringWithFormat:@"%@\n",contact];
        [result appendString: contractStr];
    }
    return result;
}





@end
