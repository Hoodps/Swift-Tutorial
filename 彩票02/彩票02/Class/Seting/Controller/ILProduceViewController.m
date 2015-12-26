//
//  ILProduceViewController.m
//  彩票02
//
//  Created by xiexz on 15/12/26.
//  Copyright © 2015年 xiexz. All rights reserved.
//

#import "ILProduceViewController.h"
#import "ILProduct.h"
#import "ILProductCell.h"

@interface ILProduceViewController ()

@property(nonatomic, strong) NSMutableArray *data;
@end

@implementation ILProduceViewController

static NSString * const ID = @"produce";

-(NSMutableArray *)data{
    
    if (_data == nil) {
        _data = [NSMutableArray array];
        NSString *fielName = [[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
        
        NSData *data = [NSData dataWithContentsOfFile:fielName];
        NSArray *jsonArr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        for (NSDictionary *dict in jsonArr) {
            ILProduct *product = [ILProduct productWithDict:dict];
            
            [_data addObject:product];
        }
    }
    
    return _data;
}

-(id)init{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    
    //每个cell的尺寸
    layout.itemSize = CGSizeMake(76, 76);
    //水平间距
    layout.minimumInteritemSpacing = 1;
    //垂直间距
    layout.minimumLineSpacing = 10;
    
    layout.sectionInset = UIEdgeInsetsMake(10, 0, 0, 0);
    return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    UINib *xib = [UINib nibWithNibName:@"ILProductCell" bundle:nil];
    [self.collectionView registerNib:xib forCellWithReuseIdentifier:ID];
    //注册UIConectionViewCell
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:ID];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"produce";
    ILProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    // Configure the cell
    ILProduct *p = self.data[indexPath.item];
    cell.product = p;
    
    //cell.backgroundColor = [UIColor redColor];
    
   
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"sdf");
}


@end
