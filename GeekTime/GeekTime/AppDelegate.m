//
//  AppDelegate.m
//  GeekTime
//
//  Created by karajan on 2021/2/8.
//  Copyright © 2021 karajan. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
@interface AppDelegate () <UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];

    ViewController *viewController = [[ViewController alloc] init];
    
    viewController.tabBarItem.title = @"新闻";
    viewController.tabBarItem.image = [UIImage imageNamed:@"page"];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"page_selected"];

    UIViewController *viewController2 = [[UIViewController alloc] init];
    viewController2.view.backgroundColor = [UIColor greenColor];
    viewController2.tabBarItem.title = @"视频";
    viewController2.tabBarItem.image = [UIImage imageNamed:@"video"];
    viewController2.tabBarItem.selectedImage = [UIImage imageNamed:@"video_selected"];
    
    UIViewController *viewController3 = [[UIViewController alloc] init];
    viewController3.view.backgroundColor = [UIColor blueColor];
    viewController3.tabBarItem.title = @"推荐";
    viewController3.tabBarItem.image = [UIImage imageNamed:@"like"];
    viewController3.tabBarItem.selectedImage = [UIImage imageNamed:@"like_selected"];
    
    UIViewController *viewController4 = [[UIViewController alloc] init];
    viewController4.view.backgroundColor = [UIColor whiteColor];
    viewController4.tabBarItem.title = @"我的";
    viewController4.tabBarItem.image = [UIImage imageNamed:@"home"];
    viewController4.tabBarItem.selectedImage = [UIImage imageNamed:@"home_selected"];
    
    [tabBarController setViewControllers:@[viewController,viewController2,viewController3,viewController4]];
    
    tabBarController.delegate = self;
    
    UINavigationController *navgationController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
    
    self.window.rootViewController = navgationController;
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"点击了TabBar");
}

@end
