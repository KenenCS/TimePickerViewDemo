//
//  ViewController.m
//  TimePickerViewDemo
//
//  Created by kenen on 2017/3/22.
//  Copyright © 2017年 kenen. All rights reserved.
//

#import "ViewController.h"
#import "SelectorView.h"

#define SCREEN_HEIGHT    [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH     [UIScreen mainScreen].bounds.size.width

@interface ViewController (){
    SelectorView *_tsvc;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *fastButton = [UIButton buttonWithType:UIButtonTypeCustom];
    fastButton.backgroundColor = [UIColor greenColor];
    fastButton.frame = CGRectMake(50, 50, SCREEN_WIDTH-100, 30);
    [fastButton setTitle:@"时间选择器" forState:UIControlStateNormal];
    [fastButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    fastButton.titleLabel.font = [UIFont systemFontOfSize:17];
    fastButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [fastButton addTarget:self action:@selector(fastButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:fastButton];
    
}

- (void)fastButtonClick:(UIButton *)Btn {
    
    [_tsvc removeFromSuperview];
    _tsvc=[[SelectorView alloc]initWithFrame:CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, 260)];
    [self.view addSubview:_tsvc];
    [UIView animateWithDuration:0.5 animations:^{
        _tsvc.frame=CGRectMake(0, SCREEN_HEIGHT-260, SCREEN_WIDTH, 260);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
