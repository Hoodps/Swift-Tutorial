//
//  ILSettingItem.h
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ILSettingItem : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *icon;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

@end
