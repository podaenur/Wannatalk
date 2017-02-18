//
//  AppDelegate.m
//  Wannatalk
//
//  Created by Evgeniy Akhmerov on 18/02/17.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "AppDelegate.h"
#import "WTMainViewController.h"

@implementation AppDelegate

#pragma mark - Private

- (void)initialSetup {
    WTMainViewController *rootController = [[WTMainViewController alloc] init];
    UIWindow *main = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    main.rootViewController = rootController;
    self.window = main;
    [self.window makeKeyAndVisible];
}

#pragma mark - Protocol conformance
#pragma mark  UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initialSetup];
    return YES;
}

@end
