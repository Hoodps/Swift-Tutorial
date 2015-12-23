//
//  ILTabBar.m
//  彩票02
//
//  Created by xiexz on 15/12/23.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILTabBar.h"
#import "ILTabBarButton.h"

@interface ILTabBar()

@property(nonatomic, weak) UIButton *selectedButton;

@end
@implementation ILTabBar

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //[self addBtns];
    }
    return self;
}

- (void)addTabBarButtonWithName:(NSString *)name selectedImage:(NSString *)selectedImage{
    ILTabBarButton *btn = [ILTabBarButton buttonWithType:UIButtonTypeCustom];
    
    [btn setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:btn];
    
}

- (void)addBtns{
    
    NSString *image = nil;
    NSString *selectedImage = nil;
    for (int i = 0; i < 5; i++) {
        
        //使用自定义的UIButton 去掉高亮状态
        ILTabBarButton *btn = [[ILTabBarButton alloc] init];
        
        image = [NSString stringWithFormat:@"TabBar%d", i + 1];
        selectedImage = [NSString stringWithFormat:@"TabBar%dSel", i + 1];
        
        [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        [self addSubview:btn];
        
        if (i == 0) {
            [self btnClick:btn];
            
        }
    }
}

-(void)btnClick:(UIButton *)button{
    //NSLog(@"sdf");
    _selectedButton.selected = NO;
    button.selected = YES;
    _selectedButton = button;
    
    if ([_delegate respondsToSelector:@selector(tabBar:didSelectedIndex:)]) {
        [_delegate tabBar:self didSelectedIndex:button.tag];
    }
}

//设置buttonframe

- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = self.bounds.size.width / self.subviews.count;
    CGFloat btnH = self.bounds.size.height;
    
    for (int i = 0; i < self.subviews.count; i++) {
        
        UIButton *btn = self.subviews[i];
        btn.tag = i;
        btnX = i * btnW;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
        if (i == 0 ) {
            [self btnClick:btn];
        }
    }
}

@end
