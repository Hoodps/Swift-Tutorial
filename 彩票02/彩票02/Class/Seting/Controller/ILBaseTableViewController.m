//
//  ILBaseTableViewController.m
//  彩票02
//
//  Created by xiexz on 15/12/26.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILBaseTableViewController.h"
#import "ILSettingItem.h"
#import "ILSettingGroup.h"
#import "ILSettingCell.h"
#import "ILSettingArrowItem.h"
#import "ILSettingSwichItem.h"

@interface ILBaseTableViewController ()

@end

@implementation ILBaseTableViewController

-(NSMutableArray *)datalist{
    if (_datalist == nil) {
        _datalist = [NSMutableArray array];
    }
    return _datalist;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(id)init{
    
    return [super initWithStyle:UITableViewStyleGrouped];
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
            vc.title = item.title;
            [self.navigationController pushViewController:vc animated:YES];
        }
        
    }
    
}


@end
