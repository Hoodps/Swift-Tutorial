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
    
    
    ILTabBar *tabBar = [[ILTabBar alloc] init];
    
    //在stroyboard 隐藏的是系统自带的tabBar，所以不能去掉
    //[self.tabBar removeFromSuperview];
    //tabBar.frame = self.tabBar.frame;
    //[self.view addSubview:tabBar];
    
    //这样就可以push去掉tabbar
    tabBar.frame =self.tabBar.bounds;
    [self.tabBar addSubview:tabBar];
    tabBar.delegate = self;
    
    //由控制器管理
    NSString *imageName = nil;
    NSString *selectedImage = nil;
    for (int i = 0; i < self.childViewControllers.count; i++) {
        
        imageName = [NSString stringWithFormat:@"TabBar%d", i + 1];
        selectedImage = [NSString stringWithFormat:@"TabBar%dSel", i + 1];
        
        [tabBar addTabBarButtonWithName:imageName selectedImage:selectedImage];
    }

    
    //self.selectedIndex = 2;
}

- (void)tabBar:(ILTabBar *)tabBar didSelectedIndex:(int)index{
    self.selectedIndex = index;
}

@end
