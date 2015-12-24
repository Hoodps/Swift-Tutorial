//
//  ILNavigationController.m
//  彩票02
//
//  Created by xiexz on 15/12/23.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILNavigationController.h"

@implementation ILNavigationController

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    //拦截所有的push方法  隐藏导航栏
    viewController.hidesBottomBarWhenPushed = YES;
    return [super pushViewController:viewController animated:animated];
}
//
+(void)initialize{
    //只要设置一次就可以了
    if (self == [ILNavigationController class]) {
        //设置导航栏的背景
        UINavigationBar *bar = [UINavigationBar appearance];
        [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
        
        //导航栏文字颜色
        
        NSDictionary *dict = @{
                               NSForegroundColorAttributeName : [UIColor whiteColor],
                               NSFontAttributeName : [UIFont systemFontOfSize:18]
                               };
        [bar setTitleTextAttributes:dict];
        
        [bar setTintColor:[UIColor whiteColor]];
        
        UIBarButtonItem *buttonItem = [UIBarButtonItem appearance];
        [buttonItem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [buttonItem setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
        
        [buttonItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [buttonItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
        
   }
}

@end
