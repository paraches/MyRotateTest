//
//  AppDelegate.h
//  MyRotateTest
//
//  Created by teshi on 12/09/21.
//  Copyright (c) 2012年 paraches. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MyTabBarController.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MyTabBarController *myTabBarController;

@end
