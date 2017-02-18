//
//  WTModelTests.m
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 18/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WTMetadata.h"
#import "WTFrame.h"

@interface WTModelTests : XCTestCase

@end

@implementation WTModelTests

- (void)testMetadataModelInstantiating {
    NSDictionary *rawData = @{ @"format": @2,
                               @"realTextureFileName": @"game1_table_apple_one.png",
                               @"size": @"{2006,870}",
                               @"smartupdate": @"$TexturePacker:SmartUpdate:e6ca6160babe0724b7930382efd10afe$",
                               @"textureFileName": @"game1_table_apple_one.png" };
    
    WTMetadata *model = [WTMetadata modelFromDictionary:rawData];
    
    XCTAssertNotNil(model);
    XCTAssertEqual(model.format, 2);
    XCTAssertEqual(model.realTextureFileName, @"game1_table_apple_one.png");
    XCTAssertTrue(CGSizeEqualToSize(model.size, CGSizeMake(2006, 870)));
    XCTAssertEqual(model.smartupdate, @"$TexturePacker:SmartUpdate:e6ca6160babe0724b7930382efd10afe$");
    XCTAssertEqual(model.textureFileName, @"game1_table_apple_one.png");
}

- (void)testFrameModelInstantiating {
    
    NSDictionary *rawData = @{ @"frame": @"{{1848,594},{154,176}}",
                               @"offset": @"{-6,-130}",
                               @"rotated": @NO,
                               @"sourceColorRect": @"{{42,265},{154,176}}",
                               @"sourceSize": @"{250,446}" };
    
    WTFrame *model = [WTFrame modelFromDictionary:rawData];
    
    XCTAssertNotNil(model);
    XCTAssertTrue(CGRectEqualToRect(model.frame, CGRectMake(1848, 594, 154, 176)));
    XCTAssertTrue(CGPointEqualToPoint(model.offset, CGPointMake(-6, -130)));
    XCTAssertEqual(model.rotated, NO);
    XCTAssertTrue(CGRectEqualToRect(model.sourceColorRect, CGRectMake(42, 265, 154, 176)));
    CGVector sourceSize = CGVectorMake(250, 446);
    XCTAssertEqual(model.sourceSize.dx, sourceSize.dx);
    XCTAssertEqual(model.sourceSize.dy, sourceSize.dy);
}

@end
