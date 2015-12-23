//
//  ILTabBarViewController.m
//  彩票02
//
//  Created by xiexz on 15/12/23.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILTabBarViewController.h"
#import "ILTabBar.h"

@interface ILTabBarViewController() <ILTabBarDelegate>

@end

@implementation ILTabBarViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self.tabBar removeFromSuperview];
    
    ILTabBar *tabBar = [[ILTabBar alloc] init];
    tabBar.frame = self.tabBar.frame;
    
    tabBar.delegate = self;
    [self.view addSubview:tabBar];
    
    
    //self.selectedIndex = 2;
}

- (void)tabBar:(ILTabBar *)tabBar didSelectedIndex:(int)index{
    self.selectedIndex = index;
}

@end
