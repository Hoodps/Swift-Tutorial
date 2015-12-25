//
//  ILSettingGroup.h
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ILSettingGroup : NSObject

@property(nonatomic, copy) NSString *header;

@property(nonatomic, strong) NSArray *items;
@property(nonatomic, copy) NSString *footer;

@end
