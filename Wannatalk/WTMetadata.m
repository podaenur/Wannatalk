//
//  WTMetadata.m
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 18/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "WTMetadata.h"

static NSString *const formatKey = @"format";
static NSString *const realTextureFileNameKey = @"realTextureFileName";
static NSString *const sizeKey = @"size";
static NSString *const smartupdateKey = @"smartupdate";
static NSString *const textureFileNameKey = @"textureFileName";

@implementation WTMetadata

+ (instancetype)modelFromDictionary:(NSDictionary *)dictionary {
    NSAssert(dictionary[formatKey], nil);
    NSAssert(dictionary[realTextureFileNameKey], nil);
    NSAssert(dictionary[sizeKey], nil);
    NSAssert(dictionary[smartupdateKey], nil);
    NSAssert(dictionary[textureFileNameKey], nil);
    
    return [[WTMetadata alloc] initWithFormat:[dictionary[formatKey] integerValue]
                          realTextureFileName:dictionary[realTextureFileNameKey]
                                         size:dictionary[sizeKey]
                                  smartupdate:dictionary[smartupdateKey]
                              textureFileName:dictionary[textureFileNameKey]];
}

- (instancetype)initWithFormat:(NSInteger)f
           realTextureFileName:(NSString *)rtName
                          size:(NSString *)s
                   smartupdate:(NSString *)sUpdate
               textureFileName:(NSString *)tName {
    
    self = [super init];
    if (self) {
        _format = f;
        _realTextureFileName = rtName;
        _size = CGSizeFromString(s);
        _smartupdate = sUpdate;
        _textureFileName = tName;
    }
    return self;
}

@end
