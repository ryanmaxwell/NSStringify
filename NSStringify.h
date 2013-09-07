//
//  NSStringify.h
//  NSStringify
//
//  Created by Ryan Maxwell on 7/09/13.
//  Copyright (c) 2013 Ryan Maxwell. All rights reserved.
//

#import <Foundation/Foundation.h>

NSMutableString * concatenateObjectDescriptions(id firstObject, ...);

#ifndef NSStringify
    #define NSStringify(...)           [NSString stringWithString:concatenateObjectDescriptions(__VA_ARGS__, nil)]
#endif

#ifndef NSMutableStringify
    #define NSMutableStringify(...)    concatenateObjectDescriptions(__VA_ARGS__, nil)
#endif

#ifndef NSLogify
    #define NSLogify(...)               NSLog(@"%@", concatenateObjectDescriptions(__VA_ARGS__, nil))
#endif
