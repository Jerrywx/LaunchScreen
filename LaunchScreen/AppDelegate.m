//
//  AppDelegate.m
//  LaunchDemo
//
//  Created by wxiao on 15/12/19.
//  Copyright © 2015年 wxiao. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LaunchDemo.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	[self setUpWindow];
	
	LaunchDemo *demo = [LaunchDemo new];
	demo.iconFrame = CGRectMake((SCREEN_WIDTH - 213) * 0.5, 80, 213, 54);
	demo.desLabelFreme = CGRectMake(0, SCREEN_HEIGHT - 34, SCREEN_WIDTH, 25);
	[demo loadLaunchImage:@"STARTIMAGE.jpg"
				 iconName:@"logo_coding_top"
			  appearStyle:JRApperaStyleOne
				  bgImage:@"bg.png"
				disappear:JRDisApperaStyleLeft
		   descriptionStr:@"23601145@qq.com"];
	demo.desLabel.font = [UIFont systemFontOfSize:12];
	demo.desLabel.textColor = [UIColor whiteColor];
	
	
	return YES;
}

- (void)setUpWindow {
	
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	ViewController *view = [[ViewController alloc] init];
	UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:view];
	self.window.rootViewController = nav;
	[self.window makeKeyAndVisible];
}

- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
