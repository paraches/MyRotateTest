//
//  AppDelegate.m
//  MyRotateTest
//
//  Created by teshi on 12/09/21.
//  Copyright (c) 2012年 paraches. All rights reserved.
//

#import "AppDelegate.h"

#import "MyNavigationController.h"
#import "My1stViewController.h"
#import "My2ndViewController.h"

@implementation AppDelegate

- (void)dealloc
{
	[_window release];
	[_myTabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.

	My1stViewController *my1stView = [[[My1stViewController alloc] initWithNibName:@"My1stViewController" bundle:nil] autorelease];
	MyNavigationController *myNav1 = [[[MyNavigationController alloc] initWithRootViewController:my1stView] autorelease];
	myNav1.title = @"Tab 1";
	My2ndViewController *my2ndView = [[[My2ndViewController alloc] initWithNibName:@"My2ndViewController" bundle:nil] autorelease];
	MyNavigationController *myNav2 = [[[MyNavigationController alloc] initWithRootViewController:my2ndView] autorelease];
	myNav2.title = @"Tab 2";

	self.myTabBarController = [[[MyTabBarController alloc] init] autorelease];
	self.myTabBarController.viewControllers = @[myNav1, myNav2];
	self.window.rootViewController = self.myTabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
