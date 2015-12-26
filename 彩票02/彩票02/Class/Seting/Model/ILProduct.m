//
//  ILProduct.m
//  彩票02
//
//  Created by xiexz on 15/12/26.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILProduct.h"


@implementation ILProduct

+(instancetype)productWithDict:(NSDictionary *)dict{
    ILProduct *product = [[ILProduct alloc] init];
    
    //[product setValuesForKeysWithDictionary:dict];
    product.title = dict[@"title"];
    product.icon = dict[@"icon"];
    product.url = dict[@"url"];
    product.customUrl = dict[@"customUrl"];
    product.ID = dict[@"id"];
    
    return product;
}
-(void)setIcon:(NSString *)icon{
    _icon = [icon stringByReplacingOccurrencesOfString:@"@2x.png" withString:@""];
}
@end
