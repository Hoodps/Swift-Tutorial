//
//  UIImage+HO.m
//  weibo_1
//
//  Created by xiexz on 15/12/20.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "UIImage+HO.h"

@implementation UIImage (HO)

+ (UIImage *)imageWithName:(NSString *)name{
    if (IOS7) {
        NSString *newName = [name stringByAppendingFormat:@"_os7"];
        
        UIImage *image = [UIImage imageNamed:newName];
        if (image == nil) {
            image = [UIImage imageNamed:name];
        }
        return image;
    }
    return [UIImage imageNamed:name];
    
}

@end

