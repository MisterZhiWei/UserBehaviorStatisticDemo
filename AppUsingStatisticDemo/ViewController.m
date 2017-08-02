//
//  ViewController.m
//  AppUsingStatisticDemo
//
//  Created by 刘志伟 on 2017/8/2.
//  Copyright © 2017年 刘志伟. All rights reserved.
//

#import "ViewController.h"
#import "ScrollviewImgViewTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addTestButton];
}

#pragma mark 协助测试的按钮 及点击事件
- (void)addTestButton{
    CGRect frame = CGRectMake(50, 50, 80, 50);
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    //    btn.center = self.view.center;
    [btn setTitle:@"测试按钮" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(textBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)textBtnClicked:(UIButton *)button{
    
    ScrollviewImgViewTest *testVC = [[ScrollviewImgViewTest alloc] init];
    testVC.navigationItem.title = @"测试";
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:testVC animated:YES];
    self.hidesBottomBarWhenPushed = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
