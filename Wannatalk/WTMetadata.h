//
//  WTMetadata.h
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 18/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTMetadata : NSObject

@property (nonatomic, readonly, assign) NSInteger format;
@property (nonatomic, readonly, copy) NSString *realTextureFileName;
@property (nonatomic, readonly, assign) CGSize size;
@property (nonatomic, readonly, copy) NSString *smartupdate;
@property (nonatomic, readonly, copy) NSString *textureFileName;

+ (instancetype)modelFromDictionary:(NSDictionary *)dictionary;

@end
