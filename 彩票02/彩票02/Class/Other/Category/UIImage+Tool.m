//
//  UIImage+Tool.m
//  彩票02
//
//  Created by xiexz on 15/12/24.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "UIImage+Tool.h"

@implementation UIImage (Tool)


+(instancetype)imageWithResizableImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    return image;
}
@end
