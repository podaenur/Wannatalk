//
//  WTFileManager.h
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 19/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN NSString *const kWTFileManagerErrorDomain;

@interface WTFileManager : NSObject

+ (NSDictionary *)loadList:(NSString *)pListName error:(NSError **)error;

@end
