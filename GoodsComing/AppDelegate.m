//
//  AppDelegate.m
//  GoodsComing
//
//  Created by zhouzhi on 14-8-12.
//  Copyright (c) 2014年 efreight. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"

@implementation AppDelegate

+(AppDelegate*)ShareAppDelegate
{
    return (AppDelegate*)([UIApplication sharedApplication].delegate);
}

- (void)addHomeView
{
    if(IS_IPHONE_5)
    {
        self.viewController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    }
    else
    {
        self.viewController = [[HomeViewController alloc] initWithNibName:@"HomeViewControllerSmall" bundle:nil];
    }
    //self.viewController.title =  @"指尖货运" ;
    UINavigationController *navController = [[UINavigationController alloc] init];
    [navController pushViewController:self.viewController animated:YES];
    
    //[self.window addSubview: _navController.view];
    self.window.rootViewController = navController;
    
    //向微信注册
//    [WXApi registerApp:@"wxc14ec9b417175b1a"];
//    
//    [self initWeiboEngine];
//    [self initTCWeiboEngine];
//    [self initQzone];
    
//    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"everLaunchedWeibo"])
//    {
//        [_SinaWeiboOAuth deleteAuthorizeDataInKeychain];
//        [_TCWeiboOAuth deleteAuthorizeDataInKeychain];
//        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"everLaunchedWeibo"];
//    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    [self addHomeView];
    
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
