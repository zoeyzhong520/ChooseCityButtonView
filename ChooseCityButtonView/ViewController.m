//
//  ViewController.m
//  ChooseCityButtonView
//
//  Created by ZZJ on 2018/6/19.
//  Copyright © 2018年 ZZJ. All rights reserved.
//

#import "ViewController.h"
#import "ChooseCityButtonView.h"

@interface ViewController ()

@property (nonatomic, strong) ChooseCityButtonView *leftBtn;

@property (nonatomic, strong) NSArray *btnArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"首页";
    
    self.leftBtn = [[ChooseCityButtonView alloc] initWithFrame:CGRectMake(12, 23, [UIScreen mainScreen].bounds.size.width / 375 * 55, [UIScreen mainScreen].bounds.size.height / 667 * 14)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:_leftBtn];
    
    self.btnArray = @[@"宁夏回族自治区", @"香港", @"上海市"];
    for (int i = 0; i < _btnArray.count; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        btn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/3 * i, 100, [UIScreen mainScreen].bounds.size.width/3, 40);
        [btn setTitle:_btnArray[i] forState:UIControlStateNormal];
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = i;
        [self.view addSubview:btn];
    }
}

- (void)clickAction:(UIButton *)btn {
    
    self.leftBtn.text = self.btnArray[btn.tag];
    NSLog(@"%@", self.btnArray[btn.tag]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
