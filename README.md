NSStringify
===========

Some NSString preprocessor abuse.

## NSStringify(...)

Simply concatenate some objects into a string, using the `description` method.

Arguably more readable/convenient than `[NSString stringWithFormat:@"%@", object]`.

## NSLogify(...)

NSStringify's the arguments, and NSLog's the result.

e.g.

```objc
NSString *ownerFirstName = @"Micky";
NSString *ownerLastName = @"Mouse";

NSString *ownerFullName = NSStringify(ownerFirstName, @" ", ownerLastName);

NSString *dogName = @"Pluto";
NSInteger dogAge = 10;
        
NSLogify(ownerFullName, @"'s dog is called ", dogName, @". He is ", @(dogAge), @" years old.");
```