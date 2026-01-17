//
//  NSDictionary+CLCategory.m
//  CoreLib
//
//  Created by apple pro on 2016/11/18.
//  Copyright © 2016年 GIGA. All rights reserved.
//

#import "NSDictionary+CLCategory.h"
@implementation NSDictionary (CLCategory)
#pragma mark -

- (id)valueForKey:(id)key withClass:(Class)valueClass
{
    if (key != nil) {
        id value = self[key];
        if (!valueClass || [value isKindOfClass:valueClass]) {
            return value;
        }
    }
    return nil;
}

- (id)valueForKey:(id)key canRespondsToSelector:(SEL)selector
{
    if (key != nil) {
        id value = self[key];
        if (!selector || [value respondsToSelector:selector]) {
            return value;
        }
    }
    return nil;
}

#pragma mark -

- (NSString *)stringValueForKey:(id)key
{
    if (key != nil) {
        id value = self[key];
        return  (value == nil || [value isEqual:[NSNull null]]) ? nil : ([value isKindOfClass:[NSString class]] ? value : [value description]);
    }
    
    return nil;
}

- (NSInteger)integerValueForKey:(id)key {
    return [self integerValueForKey:key defaultValue:0];
}

- (int)intValueForKey:(id)key {
    return [self intValueForKey:key defaultValue:0];
}

- (NSInteger)integerValueForKey:(id)key defaultValue:(NSInteger)defaultValue
{
    id value = [self valueForKey:key canRespondsToSelector:@selector(integerValue)];
    return value ? [value integerValue] : defaultValue;
}

- (int)intValueForKey:(id)key defaultValue:(int)defaultValue
{
    id value = [self valueForKey:key canRespondsToSelector:@selector(intValue)];
    return value ? [value intValue] : defaultValue;
}

- (CGFloat)floatValueForKey:(id)key {
    return [self floatValueForKey:key defaultValue:0.f];
}
- (CGFloat)floatValueForKey:(id)key defaultValue:(CGFloat)defaultValue
{
    id value = [self valueForKey:key canRespondsToSelector:@selector(floatValue)];
    return value ? [value floatValue] : defaultValue;
}

- (double)doubleValueForKey:(id)key {
    return [self doubleValueForKey:key defaultValue:0.0];
}
- (double)doubleValueForKey:(id)key defaultValue:(double)defaultValue
{
    id value = [self valueForKey:key canRespondsToSelector:@selector(doubleValue)];
    return value ? [value doubleValue] : defaultValue;
}

- (BOOL)boolValueForKey:(id)key {
    return [self boolValueForKey:key defaultValue:NO];
}
- (BOOL)boolValueForKey:(id)key defaultValue:(BOOL)defaultValue
{
    id value = [self valueForKey:key canRespondsToSelector:@selector(boolValue)];
    return value ? [value boolValue] : defaultValue;
}


- (NSArray *)arrayValueForKey:(id)key {
    return [self valueForKey:key withClass:[NSArray class]];
}
- (NSDictionary *)dictionaryValueForKey:(id)key {
    return [self valueForKey:key withClass:[NSDictionary class]];
}

@end

