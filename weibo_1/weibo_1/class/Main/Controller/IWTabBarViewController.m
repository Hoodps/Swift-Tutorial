//
//  IWTabBarViewController.m
//  weibo_1
//
//  Created by xiexz on 15/12/20.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "IWTabBarViewController.h"
#import "IWHomeViewController.h"
#import "IWMessageViewController.h"
#import "IWDiscoverViewController.h"
#import "IWMeViewController.h"

@interface IWTabBarViewController ()

@end

@implementation IWTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化子控制器
    IWHomeViewController *home = [[IWHomeViewController alloc]init];
    home.view.backgroundColor = [UIColor redColor];
    [self setupChildViewController:home title:@"首页" imageName:@"tabbar_home_os7" selectedImage:@"tabbar_home_selected_os7"];
    //__aa;
    IWMessageViewController *message = [[IWMessageViewController alloc]init];
    message.view.backgroundColor = [UIColor blackColor];
    [self setupChildViewController:message title:@"消息" imageName:@"tabbar_message_center_os7" selectedImage:@"tabbar_message_center_selected_os7"];
    
    IWDiscoverViewController *discover = [[IWDiscoverViewController alloc]init];
    discover.view.backgroundColor = [UIColor blueColor];
    [self setupChildViewController:discover title:@"发现" imageName:@"tabbar_discover_os7" selectedImage:@"tabbar_discover_selected_os7"];
    
    IWMeViewController *me = [[IWMeViewController alloc]init];
    me.view.backgroundColor = [UIColor orangeColor];
    [self setupChildViewController:me title:@"我" imageName:@"tabbar_profile_os7" selectedImage:@"tabbar_profile_selected_os7"];
    
}

-(void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageNmae selectedImage:(NSString *)selectedImage{
    
    childVc.view.backgroundColor = [UIColor orangeColor];
    childVc.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:imageNmae];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
    
}


@end
