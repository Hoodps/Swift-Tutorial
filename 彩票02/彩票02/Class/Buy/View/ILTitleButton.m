//
//  ILTitleButton.m
//  彩票02
//
//  Created by xiexz on 15/12/23.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILTitleButton.h"

@implementation ILTitleButton

-(void)awakeFromNib{
    self.imageView.contentMode = UIViewContentModeCenter;
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSDictionary *dict = @{
                           NSFontAttributeName : [UIFont systemFontOfSize:15]
                           };
    //self.titleLabel.text 会死循环
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine attributes:dict context:nil].size.width;
    CGFloat titleH = contentRect.size.height;
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW = 30;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageY = 0;
 
    
    return CGRectMake(imageX, imageY, imageW, imageH);
}


@end
