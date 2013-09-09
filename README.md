NSStringify
===========

Some NSString preprocessor abuse.

## NSStringify(...)

Easily concatenate some objects into a string. 

* Read from left-to right like a human being.
* More convenient than `stringWithFormat:`.

e.g.

```objc
NSString *ownerFirstName = @"Micky";
NSString *ownerLastName = @"Mouse";
```

```objc
NSString *ownerFullName = [NSString stringWithFormat:@"%@ %@", ownerFirstName, ownerLastName];
```
vs.
```objc
NSString *ownerFullName = NSStringify(ownerFirstName, @" ", ownerLastName);
```

## NSLogify(...)

NSStringify's the arguments, and NSLog's the result.

* Log a single object without the need for a format string, e.g. `NSLogify(obj)`.
* Log a formatted string with the same benefits as NSStringify.
* These macros are making use of a variable-arg C function, but you're not required to nil terminate them. Preprocessor FTW.

e.g.

```objc
NSString *dogName = @"Pluto";
NSInteger dogAge = 10;
 
NSLogify(ownerFullName, @"'s dog is called ", dogName, @". He is ", @(dogAge), @" years old.");
```