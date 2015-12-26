//
//  ILProduct.h
//  彩票02
//
//  Created by xiexz on 15/12/26.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ILProduct : NSObject

@property(nonatomic, copy) NSString *title;

@property(nonatomic, copy) NSString *ID;

@property(nonatomic, copy) NSString *url;

@property(nonatomic, copy) NSString *icon;

@property(nonatomic, copy) NSString *customUrl;

+(instancetype)productWithDict:(NSDictionary *)dict;

@end
