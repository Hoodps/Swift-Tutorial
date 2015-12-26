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


#import "ILTestViewController.h"

#import "ILProduceViewController.h"

@interface ILSetingTableViewController ()

@property(nonatomic, strong) NSMutableArray *datalist;
@end

@implementation ILSetingTableViewController

-(id)init{
    
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (NSMutableArray *)datalist{
    if (_datalist == nil) {
        _datalist = [NSMutableArray array];
        
        //ILSettingArrowItem *pushNotes = [ILSettingArrowItem itemWithIcon:@"MorePush" title:@"消息推送"];
        ILSettingArrowItem *pushNotes = [ILSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" destVaClass:[ILTestViewController class]];
        
        //pushNotes.destVcClass = [ILTestViewController class];
        
        ILSettingItem *yaoyiyao = [ILSettingSwichItem itemWithIcon:@"handShake" title:@"摇一摇选机"];
        ILSettingItem *sound_Effect = [ILSettingSwichItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
        //NSArray *group0 = @[pushNotes, yaoyiyao];
        ILSettingGroup *group0 = [[ILSettingGroup alloc] init];
        group0.items = @[pushNotes, yaoyiyao,sound_Effect];
        group0.header = @"头部";
        group0.footer = @"尾部";
        
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
        
        [_datalist addObject:group0];
        [_datalist addObject:group1];
    }
    return _datalist;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.datalist.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //NSArray *arr = self.datalist[section];
    ILSettingGroup *group = self.datalist[section];
    return group.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   
    ILSettingCell *cell = [ILSettingCell cellWithTableView:tableView];
    
    ILSettingGroup *group = self.datalist[indexPath.section];
    ILSettingItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    
    return cell;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    ILSettingGroup *group = self.datalist[section];
    return group.header;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    ILSettingGroup *group = self.datalist[section];
    return group.footer;
}

//点击选中
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ILSettingGroup *group = self.datalist[indexPath.section];
    ILSettingItem *item = group.items[indexPath.row];
    
    if (item.option) {
        item.option();
        return;
    }
    if ([item isKindOfClass:[ILSettingArrowItem class]]) {
        ILSettingArrowItem *ArrowItem = (ILSettingArrowItem *)item;
        
        if (ArrowItem.destVcClass) {
            UIViewController *vc = [[ArrowItem.destVcClass alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
       
    }
    
}
@end





















