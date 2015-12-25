//
//  ILSettingItem.m
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILSettingItem.h"

@implementation ILSettingItem

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    
    ILSettingItem *item = [[self alloc] init];
    item.icon = icon;
    item.title = title;
    return item;
}

@end
