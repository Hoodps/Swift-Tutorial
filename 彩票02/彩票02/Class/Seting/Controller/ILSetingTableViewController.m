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
        
        ILSettingItem *pushNotes = [ILSettingItem itemWithIcon:@"MorePush" title:@"消息推送"];
        ILSettingItem *yaoyiyao = [ILSettingItem itemWithIcon:@"handShake" title:@"摇一摇选机"];
        //NSArray *group0 = @[pushNotes, yaoyiyao];
        ILSettingGroup *group0 = [[ILSettingGroup alloc] init];
        group0.items = @[pushNotes, yaoyiyao];
        //group0.header = @"头部";
        //group0.footer = @"尾部";
        
        ILSettingItem *newVersion = [ILSettingItem itemWithIcon:@"MoreUpdate" title:@"检查版本"];
        ILSettingItem *help = [ILSettingItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        //NSArray *group1 = @[newVersion, help];
        
        ILSettingGroup *group1 = [[ILSettingGroup alloc]init];
        group1.items = @[newVersion, help];
        
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
@end





















