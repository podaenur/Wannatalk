//
//  WTFrame.h
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 18/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTFrame : NSObject

@property (nonatomic, readonly, assign) CGRect frame;
@property (nonatomic, readonly, assign) CGPoint offset;
@property (nonatomic, readonly, assign, getter=isRotated) BOOL rotated;
@property (nonatomic, readonly, assign) CGRect sourceColorRect;
@property (nonatomic, readonly, assign) CGSize sourceSize;

+ (instancetype)modelFromDictionary:(NSDictionary *)dictionary;

@end
