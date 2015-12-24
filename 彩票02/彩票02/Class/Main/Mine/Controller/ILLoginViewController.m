//
//  ILLoginViewController.m
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILLoginViewController.h"
#import "UIImage+Tool.h"
#import "ILSetingTableViewController.h"

@interface ILLoginViewController()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end
@implementation ILLoginViewController


- (IBAction)setting:(id)sender {
    ILSetingTableViewController *setting = [[ILSetingTableViewController alloc] init];
    [self.navigationController pushViewController:setting animated:YES];
}



- (void)viewDidLoad{
    [super viewDidLoad];
    
    
    [_loginBtn setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButton"] forState:UIControlStateNormal];
    [_loginBtn setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButtonPressed"] forState:UIControlStateHighlighted];
}
@end
