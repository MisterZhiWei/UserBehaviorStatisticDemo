//
//  RootTabBarVC.m
//  BWAirportReadilyTake
//
//  Created by LiuZhiwei on 16/12/23.
//  Copyright © 2016年 LiuZhiwei. All rights reserved.
//

#import "RootTabBarVC.h"
#import "StudyVC.h"
#import "PersonalVC.h"
#import "HandsUpVC.h"
#import "ViewController.h"

@interface RootTabBarVC ()

@end

@implementation RootTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


+ (UITabBarController *)getTabBarVC{
    
    UIViewController *superviseVC = [[ViewController alloc] init];
    superviseVC.title = @"监察";
    superviseVC.tabBarItem.title = @"监察";
    superviseVC.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_监察_sel"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    superviseVC.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_监察_nor"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *secondNavVC = [[UINavigationController alloc] initWithRootViewController:superviseVC];
    
    UIViewController *handsUpVC = [[HandsUpVC alloc] init];
    handsUpVC.title = @"举手";
    handsUpVC.tabBarItem.title = @"举手";
    handsUpVC.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_举手_sel"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    handsUpVC.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_举手_nor"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *thirdNavVC = [[UINavigationController alloc] initWithRootViewController:handsUpVC];
    
    UIViewController *studyVC = [[StudyVC alloc] init];
    studyVC.title = @"学习";
    studyVC.tabBarItem.title = @"学习";
    studyVC.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_学习_sel"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    studyVC.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_学习_nor"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *fourNavVC = [[UINavigationController alloc] initWithRootViewController:studyVC];
    
    
    UIViewController *personalVC = [[PersonalVC alloc] init];
    personalVC.title = @"个人";
    personalVC.tabBarItem.title = @"个人";
    personalVC.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_个人_sel"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    personalVC.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"icon_个人_nor"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *fiveNavVC = [[UINavigationController alloc] initWithRootViewController:personalVC];
    
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    tabVC.tabBar.barTintColor = [UIColor whiteColor];
    tabVC.viewControllers = @[secondNavVC,thirdNavVC,fourNavVC,fiveNavVC];
    
    for (int i = 0; i < [tabVC.tabBar.items count]; i++) {
        UITabBarItem *item = [tabVC.tabBar.items objectAtIndex:i];
        
        [item setTitleTextAttributes:[NSDictionary
                                      dictionaryWithObjectsAndKeys: [UIColor colorWithRed:170/255.0 green:172/255.0 blue:173/255.0 alpha:1.0],
                                      NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
        
        [item setTitleTextAttributes:[NSDictionary
                                      dictionaryWithObjectsAndKeys: [UIColor colorWithRed:79/255.0 green:142/255.0 blue:209/255.0 alpha:1.0],
                                      NSForegroundColorAttributeName, nil] forState:UIControlStateHighlighted];
    }
    
    return tabVC;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
