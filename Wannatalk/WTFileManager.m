//
//  WTFileManager.m
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 19/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "WTFileManager.h"

NSString *const kWTFileManagerErrorDomain = @"com.zhurov.WTFileManager";

@implementation WTFileManager

+ (NSDictionary *)loadList:(NSString *)pListName error:(NSError **)error {
    NSAssert(pListName != nil, nil);
    
    BOOL hasType = [pListName hasSuffix:@".plist"];
    NSString *path = nil;
    if ((path = [[NSBundle mainBundle] pathForResource:pListName ofType:hasType ? nil : @"plist"])) {
        return [[NSDictionary alloc] initWithContentsOfFile:path];
    }
    
    if (error != NULL) {
        //TODO: error code
        //TODO: userInfo
        
        NSString *description = @"Cann't load file";
        NSString *reason = [NSString stringWithFormat:@"File %@ doesn't exist", pListName];
        NSDictionary *userInfo = @{ NSLocalizedDescriptionKey: description,
                                    NSLocalizedFailureReasonErrorKey: reason };
        
        *error = [NSError errorWithDomain:kWTFileManagerErrorDomain
                                     code:0
                                 userInfo:userInfo];
    }
    
    return nil;
}

@end
