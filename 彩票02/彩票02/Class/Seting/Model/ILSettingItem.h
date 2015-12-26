//
//  ILSettingItem.h
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ILSettingItemOption)();
@interface ILSettingItem : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *icon;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

//保存一段功能
@property(nonatomic, copy) ILSettingItemOption option;
@end
