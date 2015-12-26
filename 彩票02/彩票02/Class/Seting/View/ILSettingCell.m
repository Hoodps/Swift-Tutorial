//
//  ILSettingCell.m
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILSettingCell.h"
#import "ILSettingItem.h"

#import "ILSettingSwichItem.h"
#import "ILSettingArrowItem.h"

@interface ILSettingCell()

//使用懒加载
@property(nonatomic, strong) UISwitch *swichView;
@property(nonatomic, strong) UIImageView *imageViews;
@end

@implementation ILSettingCell

-(void)setItem:(ILSettingItem *)item{
    _item = item;
    
    
    //NSLog(@"%@", item); <ILSettingArrowItem: 0x7fc2f257de70>  <ILSettingSwichItem: 0x7fc2f257e6c0>
    [self setupData];
    [self setupAccessoryView];

    
    
}

-(UIImageView *)imageViews{
    
    if (_imageViews == nil) {
        _imageViews = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _imageViews;
}

- (UISwitch *)swichView
{
    if (_swichView == nil) {
        _swichView = [[UISwitch alloc] init];
    }
    return _swichView;
}
- (void) setupData{
    self.imageView.image = [UIImage imageNamed:_item.icon];
    self.textLabel.text =_item.title;
}

- (void)setupAccessoryView{

    if ([_item isKindOfClass:[ILSettingArrowItem class]]) {
        //self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.accessoryView = self.imageViews;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
        
    }else if([_item isKindOfClass:[ILSettingSwichItem class]]){
        //self.accessoryView = [[UISwitch alloc] init];
        self.accessoryView = self.swichView;
        self.selectionStyle = UITableViewCellEditingStyleNone;//设置不选中
    }else{
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
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
