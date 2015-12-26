//
//  ILSettingArrowItem.m
//  彩票02
//
//  Created by xiexz on 15/12/25.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILSettingArrowItem.h"

@implementation ILSettingArrowItem

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVaClass:(Class)destVcClass{
    
    ILSettingArrowItem *item = [super itemWithIcon:icon title:title];
    item.destVcClass = destVcClass;
    
    return item;
}
@end
