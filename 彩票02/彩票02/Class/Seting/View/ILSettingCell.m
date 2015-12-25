//
//  ILSettingCell.m
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILSettingCell.h"
#import "ILSettingItem.h"

@implementation ILSettingCell

-(void)setItem:(ILSettingItem *)item{
    _item = item;
    
    self.imageView.image = [UIImage imageNamed:item.icon];
    self.textLabel.text = item.title;
}

+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"cell";
    ILSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[ILSettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}
@end
