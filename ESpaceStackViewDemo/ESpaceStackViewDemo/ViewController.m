//
//  ViewController.m
//  ESpaceStackViewDemo
//
//  Created by heleiwu on 6/16/16.
//  Copyright © 2016 heleiwu. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Layout.h"
#import "ESpaceStackView.h"

@interface ViewController ()

@property (nonatomic, strong)ESpaceStackView *stackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _stackView = [[ESpaceStackView alloc] init];
    _stackView.bounds = CGRectMake(0, 0, 200, 50);
    _stackView.backgroundColor = [UIColor lightGrayColor];
    _stackView.contentInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    _stackView.rowSpace = 30;
    _stackView.columnSpace = 15;
    [self.view addSubview:_stackView];
    [[_stackView leftPaddingSuper:15] topPaddingSuper:40];
    
    UIView *preView;
    for (int i = 1; i <= 5 ; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.bounds = CGRectMake(0, 0, 15 * i, 15 * i);
        button.backgroundColor = [UIColor redColor];
        button.titleLabel.font = [UIFont systemFontOfSize:10 + i];
        [button setTitle:[NSString stringWithFormat:@"%dx", i] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onAppendView:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        
        if (preView) {
            [[button rightPaddingSuper:15] topPaddingView:preView padding:20];
        } else {
            [[button rightPaddingSuper:15] topPaddingSuper:40];
        }
        preView = button;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onAppendView:(UIButton *)button {
    UIButton *newBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    newBtn.bounds = button.bounds;
    newBtn.backgroundColor = button.backgroundColor;
    newBtn.titleLabel.font = button.titleLabel.font;
    [newBtn setTitle:button.titleLabel.text forState:UIControlStateNormal];
    [_stackView appendView:newBtn];
}

@end
