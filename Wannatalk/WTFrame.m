//
//  WTFrame.m
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 18/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "WTFrame.h"

static NSString *const frameKey = @"frame";
static NSString *const offsetKey = @"offset";
static NSString *const rotatedKey = @"rotated";
static NSString *const sourceColorRectKey = @"sourceColorRect";
static NSString *const sourceSizeKey = @"sourceSize";

@implementation WTFrame

- (instancetype)initWithFrame:(NSString *)f
                       offset:(NSString *)o
                      rotated:(BOOL)r
              sourceColorRect:(NSString *)scRect
                   sourceSize:(NSString *)sSize {
    self = [super init];
    if (self) {
        _frame = CGRectFromString(f);
        _offset = CGPointFromString(o);
        _rotated = r;
        _sourceColorRect = CGRectFromString(scRect);
        _sourceSize = CGVectorFromString(sSize);
    }
    return self;
}

#pragma mark - Protocol conformance
#pragma mark WTParsing

+ (instancetype)modelFromDictionary:(NSDictionary *)dictionary {
    NSAssert(dictionary[frameKey], nil);
    NSAssert(dictionary[offsetKey], nil);
    NSAssert(dictionary[rotatedKey], nil);
    NSAssert(dictionary[sourceColorRectKey], nil);
    NSAssert(dictionary[sourceSizeKey], nil);
    
    return [[WTFrame alloc] initWithFrame:dictionary[frameKey]
                                   offset:dictionary[offsetKey]
                                  rotated:[dictionary[rotatedKey] boolValue]
                          sourceColorRect:dictionary[sourceColorRectKey]
                               sourceSize:dictionary[sourceSizeKey]];
}

- (NSString *)rootKey {
    return @"frames";
}

@end
