//
//  ILPushViewController.m
//  彩票02
//
//  Created by xiexz on 15/12/26.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILPushViewController.h"

#import "ILSettingItem.h"
#import "ILSettingGroup.h"
#import "ILSettingCell.h"
#import "ILSettingArrowItem.h"
#import "ILSettingSwichItem.h"


@interface ILPushViewController ()

@end

@implementation ILPushViewController



-(void)viewDidLoad{
    [super viewDidLoad];
    [self addGroup0];
    
}

- (void)addGroup0{
    //ILSettingArrowItem *pushNotes = [ILSettingArrowItem itemWithIcon:@"MorePush" title:@"消息推送"];
    ILSettingArrowItem *pushNotes = [ILSettingArrowItem itemWithIcon:nil title:@"开奖号码推送"];
    
    //pushNotes.destVcClass = [ILTestViewController class];
    
    ILSettingItem *anim = [ILSettingArrowItem itemWithIcon:nil title:@"中奖动画"];
    ILSettingItem *scroe = [ILSettingArrowItem itemWithIcon:nil title:@"比分直播提醒"];
    
    ILSettingItem *tiemw= [ILSettingArrowItem itemWithIcon:nil title:@"购彩定时提醒"];
    //NSArray *group0 = @[pushNotes, yaoyiyao];
    ILSettingGroup *group0 = [[ILSettingGroup alloc] init];
    group0.items = @[pushNotes, anim, scroe, tiemw];

    [self.datalist addObject:group0];
}
@end
