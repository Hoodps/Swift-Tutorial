//
//  IWOAuthController.m
//  weibo_1
//
//  Created by xiexz on 15/12/20.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "IWOAuthController.h"

@implementation IWOAuthController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
   // self.view.backgroundColor
    self.view.backgroundColor = [UIColor redColor];
    
    UIWebView *webView = [[UIWebView alloc]init];
    webView.frame = self.view.bounds;
    [self.view addSubview:webView];
    
    NSURL *url = [NSURL URLWithString:@"https://api.weibo.com/oauth2/authorize?client_id=2706334846&redirect_uri=https://www.baidu.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    


}
@end
