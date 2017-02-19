//
//  WTpListParser.h
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 19/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WTParsing;

@interface WTpListParser : NSObject

+ (void)parse:(NSData *)pListData toModels:(NSArray<Class<WTParsing>> *)modelsInfo commpletion:(void(^)(id result))completion;

@end