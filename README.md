NSStringify
===========

Some NSString preprocessor abuse.

## NSStringify(...)

Simply concatenate some objects into a string, using the `description` method.
Arguably more readable/convenient than `[NSString stringWithFormat:@"%@ %@", obj1, obj2]`.

## NSLogify(...)

NSStringify's the arguments, and NSLog's the result. 
Definitely more convenient than NSLog(@"%@ %@", obj1, obj2).

e.g.

```objc
NSString *ownerFirstName = @"Micky";
NSString *ownerLastName = @"Mouse";

NSString *ownerFullName = NSStringify(ownerFirstName, @" ", ownerLastName);

NSString *dogName = @"Pluto";
NSInteger dogAge = 10;
        
NSLogify(ownerFullName, @"'s dog is called ", dogName, @". He is ", @(dogAge), @" years old.");
```