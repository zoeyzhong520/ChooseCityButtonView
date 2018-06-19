//
//  ChooseCityButtonView.m
//  ChooseCityButtonView
//
//  Created by ZZJ on 2018/6/19.
//  Copyright © 2018年 ZZJ. All rights reserved.
//

#import "ChooseCityButtonView.h"
#import "Masonry.h"

@interface ChooseCityButtonView ()

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ChooseCityButtonView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
    }
    return self;
}

- (void)createView {
    
    self.backgroundColor = [UIColor whiteColor];
    
    [self addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.mas_equalTo(self);
        make.width.mas_equalTo([self.label.text sizeWithAttributes:@{NSFontAttributeName:self.label.font}].width);
    }];
    
    [self addSubview:self.imageView];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.label.mas_right).offset([UIScreen mainScreen].bounds.size.width / 375 * 6);
        make.size.mas_equalTo(CGSizeMake([UIScreen mainScreen].bounds.size.width / 375 * 13, [UIScreen mainScreen].bounds.size.height / 667 * 13));
        make.centerY.mas_equalTo(self.label);
    }];
}

- (void)setText:(NSString *)text {
    _text = text;
    self.label.text = text;
    
    if (text.length == 2) {
        NSMutableString *tmpText = [NSMutableString stringWithString:text];
        [tmpText insertString:@"  " atIndex:1];
        self.label.text = tmpText;
    }
    
//    NSLog(@"%@", self.label.text);
}

#pragma mark - lazy

- (UILabel *)label {
    
    if (!_label) {
        _label = [UILabel new];
        _label.font = [UIFont systemFontOfSize:13];
        _label.textColor = [UIColor blackColor];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.backgroundColor = [UIColor whiteColor];
        _label.text = @"上海市";
    }
    return _label;
}

- (UIImageView *)imageView {
    
    if (!_imageView) {
        _imageView = [UIImageView new];
        _imageView.image = [UIImage imageNamed:@""];
        _imageView.backgroundColor = [UIColor greenColor];
    }
    return _imageView;
}

@end









