//
//  NSDictionary+CLCategory.h
//  CoreLib
//
//  Created by apple pro on 2016/11/18.
//  Copyright © 2016年 GIGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (CLCategory)

- (id)valueForKey:(id)key withClass:(Class)valueClass;
- (id)valueForKey:(id)key canRespondsToSelector:(SEL)selector;

- (NSString *)stringValueForKey:(id)key;

- (NSInteger)integerValueForKey:(id)key;
- (int)intValueForKey:(id)key  ;
- (NSInteger)integerValueForKey:(id)key defaultValue:(NSInteger)defaultValue;
- (int)intValueForKey:(id)key defaultValue:(int)defaultValue ;
- (CGFloat)floatValueForKey:(id)key;
- (CGFloat)floatValueForKey:(id)key defaultValue:(CGFloat)defaultValue;
- (double)doubleValueForKey:(id)key;
- (double)doubleValueForKey:(id)key defaultValue:(double)defaultValue;
- (BOOL)boolValueForKey:(id)key;
- (BOOL)boolValueForKey:(id)key defaultValue:(BOOL)defaultValue;;

- (NSArray *)arrayValueForKey:(id)key;
- (NSDictionary *)dictionaryValueForKey:(id)key;

@end
