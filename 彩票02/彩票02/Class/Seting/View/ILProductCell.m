//
//  ILProductCell.m
//  彩票02
//
//  Created by xiexz on 15/12/26.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILProductCell.h"
#import "ILProduct.h"

@interface ILProductCell()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (weak, nonatomic) IBOutlet UILabel *title;

@end
@implementation ILProductCell

-(void)setProduct:(ILProduct *)product{
    _product = product;
    
    _imgView.image = [UIImage imageNamed:product.icon];
    _title.text = product.title;
    //return _product;
}

//设置图片圆角
-(void)awakeFromNib{
    _imgView.layer.cornerRadius = 10;
    _imgView.clipsToBounds = YES;
    //_imgView.layer.masksToBounds
    
}

@end
