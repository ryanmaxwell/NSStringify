//
//  NSStringify.m
//  NSStringify
//
//  Created by Ryan Maxwell on 7/09/13.
//  Copyright (c) 2013 Ryan Maxwell. All rights reserved.
//

#import "NSStringify.h"

NSString * concatenate_object_descriptions(id firstObject, ...) {
    
    NSMutableString *result = [NSMutableString string];
    
    va_list args;
    va_start(args, firstObject);
    for (id arg = firstObject; arg != nil; arg = va_arg(args, id)) {
        [result appendString:[arg description]];
    }
    va_end(args);
    
    return [result copy];
}
