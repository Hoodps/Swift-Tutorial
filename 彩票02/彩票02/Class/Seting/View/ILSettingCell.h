//
//  ILSettingCell.h
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ILSettingItem;
@interface ILSettingCell : UITableViewCell

@property(nonatomic, strong) ILSettingItem *item;

+(instancetype)cellWithTableView:(UITableView *)tableView;
@end
