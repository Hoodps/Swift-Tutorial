//
//  ILSetingTableViewController.m
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILSetingTableViewController.h"
#import "ILSettingItem.h"
#import "ILSettingGroup.h"
#import "ILSettingCell.h"

#import "ILSettingArrowItem.h"
#import "ILSettingSwichItem.h"
#import "MBProgressHUD+MJ.h"


#import "ILPushViewController.h"
#import "ILProduceViewController.h"

@interface ILSetingTableViewController ()

@end

@implementation ILSetingTableViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    [self addGroup0];
    [self addGroup1];
    
}

-(void)addGroup0{
    //ILSettingArrowItem *pushNotes = [ILSettingArrowItem itemWithIcon:@"MorePush" title:@"消息推送"];
    ILSettingArrowItem *pushNotes = [ILSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" destVaClass:[ILPushViewController class]];
    
    //pushNotes.destVcClass = [ILTestViewController class];
    
    ILSettingItem *yaoyiyao = [ILSettingSwichItem itemWithIcon:@"handShake" title:@"摇一摇选机"];
    ILSettingItem *sound_Effect = [ILSettingSwichItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
    //NSArray *group0 = @[pushNotes, yaoyiyao];
    ILSettingGroup *group0 = [[ILSettingGroup alloc] init];
    group0.items = @[pushNotes, yaoyiyao,sound_Effect];
    group0.header = @"头部";
    group0.footer = @"尾部";
    [self.datalist addObject:group0];
}

- (void)addGroup1{
    
    ILSettingItem *newVersion = [ILSettingArrowItem itemWithIcon:@"MoreUpdate" title:@"检查版本"];
    newVersion.option = ^{
        
        [MBProgressHUD showMessage:@"正在检测中......"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [MBProgressHUD hideHUD];
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"有更新版本" message:nil delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"立即更新", nil];
            
            [alert show];
        });
    };
    
    ILSettingItem *help = [ILSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助"];
    ILSettingItem *MoreShare = [ILSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享"];
    ILSettingItem *MoreMessage = [ILSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看消息"];
    //ILSettingArrowItem *MoreNetease = [ILSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐" destVcClass:[ILProduceViewController class]];
    ILSettingArrowItem *MoreNetease = [ILSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐" destVaClass:[ILProduceViewController class]];
    ILSettingItem *MoreAbout = [ILSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于"];
    
    //NSArray *group1 = @[newVersion, help];
    
    ILSettingGroup *group1 = [[ILSettingGroup alloc]init];
    group1.items = @[newVersion, help, MoreShare, MoreMessage, MoreNetease,MoreAbout];
    
    [self.datalist addObject:group1];
}
@end





















