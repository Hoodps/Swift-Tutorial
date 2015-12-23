//
//  ILTabBar.h
//  彩票02
//
//  Created by xiexz on 15/12/23.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ILTabBar;

@protocol ILTabBarDelegate <NSObject>

@optional
-(void)tabBar:(ILTabBar *)tabBar didSelectedIndex:(int)index;

@end

@interface ILTabBar : UIView

@property (nonatomic, weak) id<ILTabBarDelegate> delegate;

- (void)addTabBarButtonWithName:(NSString *)name selectedImage:(NSString *)selectedImage;

@end
