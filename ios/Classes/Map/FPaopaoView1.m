//
//  FPaopaoView.m
//  TFBlue
//
//  Created by 范力升 on 2020/6/2.
//  Copyright © 2020 erge. All rights reserved.
//

#import "FPaopaoView1.h"
#import "Masonry.h"
#import "YYKit.h"
#import "BMFFileManager.h"
@interface FPaopaoView1()
@property (nonatomic , strong)  UILabel * label;
@property (nonatomic , strong)  UIImageView * imageView;
@property (nonatomic , strong)  UILabel * subLabel;
@end
@implementation FPaopaoView1

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        UIImageView *bgImageView = [[UIImageView alloc]init];
        [self addSubview:bgImageView];
        [bgImageView setImage:[UIImage imageNamed:@"告警_车辆聚集_zc"]];
        [bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
        
        UILabel *label = [[UILabel alloc] init];
        label.font = [UIFont systemFontOfSize:13];
        label.textColor = [UIColor colorWithHexString:@"#FFFFFF"];
        label.textAlignment = NSTextAlignmentCenter;
        label.backgroundColor = [UIColor clearColor];
        [self addSubview:label];
        _label = label;
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self);
            make.top.equalTo(@(1));
        }];
        
    }
    
    return self;
    
}

- (void)setTitle:(NSString *)title{
    _title = title;
    _label.text = _title;
}
@end
