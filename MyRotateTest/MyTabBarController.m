//
//  MyTabBarController.m
//  MyRotateTest
//
//  Created by teshi on 12/09/21.
//  Copyright (c) 2012年 paraches. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//	画面の回転 iOS 5
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	NSLog(@"%s", __func__);
	if (self.selectedIndex==0) {
		switch (toInterfaceOrientation) {
			case UIInterfaceOrientationPortrait:
			case UIInterfaceOrientationLandscapeLeft:
				return YES;
				break;
				
			default:
				return NO;
				break;
		}
	}
	return NO;
}


//	画面の回転 iOS 6
- (BOOL)shouldAutorotate {
	NSLog(@"%s", __func__);
	if (self.selectedIndex==0) {
		return YES;
	}
	return NO;
}

- (NSUInteger)supportedInterfaceOrientations {
	NSLog(@"%s", __func__);
//	if (self.selectedIndex==0) {
		return UIInterfaceOrientationMaskAll;
//	}
//	return 0;
}

@end
