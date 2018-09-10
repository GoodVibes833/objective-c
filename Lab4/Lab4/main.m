//
//  main.m
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-07.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        
        while(true){

        NSString *menu = @"What would you like to do next? new? list ?";
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt:menu];
            if([option isEqualToString:@"quit"]){
                break;
                
            }else if ([option isEqualToString:@"new"]){
//                1. get user input for name and email
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the name : "];
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the email : "];

//                2. create a contact object based od the user input
                Contact *newContact = [[Contact alloc] initWithName:name andEmail:email];

//                3. add the contact to Contactlist's contact list
                [contactList addContact:newContact];
            }else if([option isEqualToString:@"list"]){
                NSLog(@"\n%@",contactList);
//          
            }else if([option isEqualToString:@"show"]){
                NSLog(@"\n%@",contactList);
            }
            
       }
        
//        test
//        Contact *contact = [[Contact alloc] initWithName: @"john", andEmail:@"js@asd.com"];
//        NSLog(@"%@",contact);
    }
    
    
    return 0;
}
