//
//  main.m
//  NSStringify
//
//  Created by Ryan Maxwell on 7/09/13.
//  Copyright (c) 2013 Ryan Maxwell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSStringify.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSString *ownerFirstName = @"Micky";
        NSString *ownerLastName = @"Mouse";
        
        NSString *ownerFullName = NSStringify(ownerFirstName, @" ", ownerLastName);
        
        NSString *dogName = @"Pluto";
        NSInteger dogAge = 10;
        
        NSLogify(ownerFullName, @"'s dog is called ", dogName, @". He is ", @(dogAge), @" years old.");
    }
    return 0;
}

