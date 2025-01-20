The solution involves using `weak` references to break the cycle. At least one of the references must be weak to allow the objects to be deallocated when they are no longer needed by any strong references.

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) AnotherClass *anotherObject;
@end

@interface AnotherClass : NSObject
@property (weak, nonatomic) MyClass *myObject; // Changed to weak
@end

@implementation MyClass
// ...
@end

@implementation AnotherClass
// ...
@end
```

By making the reference in `AnotherClass` weak (`@property (weak, nonatomic) MyClass *myObject;`), the `MyClass` instance is no longer kept alive solely by `AnotherClass`. When `anotherObject` is no longer referenced strongly elsewhere, the `MyClass` instance and subsequently the `AnotherClass` instance will be deallocated.