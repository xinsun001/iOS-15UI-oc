//
//  AppDelegate.m
//  iOS15UI
//
//  Created by facilityone on 2021/12/10.
//

#import "AppDelegate.h"
#import "MainTabbarViewController.h"
#import "LeftViewController.h"
#import "BasicViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    self.window.rootViewController=[MainTabbarViewController new];

    [self.window makeKeyAndVisible];

    return YES;
}



@end
