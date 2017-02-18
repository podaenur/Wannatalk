//
//  WTParsing.h
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 18/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WTParsing <NSObject>

@property (nonatomic, readonly, copy) NSString *rootKey;

+ (instancetype)modelFromDictionary:(NSDictionary *)dictionary;

@end
