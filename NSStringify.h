//
//  NSStringify.h
//  NSStringify
//
//  Created by Ryan Maxwell on 7/09/13.
//  Copyright (c) 2013 Ryan Maxwell. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString * concatenate_object_descriptions(id firstObject, ...);

#define NSStringify(...)    concatenate_object_descriptions(__VA_ARGS__, nil)
#define NSLogify(...)       NSLog(@"%@", concatenate_object_descriptions(__VA_ARGS__, nil))
