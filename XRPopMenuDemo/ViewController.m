//
//  ViewController.m
//  XRPopMenuDemo
//
//  Created by XiRuo on 15/8/7.
//  Copyright (c) 2015年 Xiruo. All rights reserved.
//

#import "ViewController.h"
#import "XRPopMenuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configButton];
}


- (void)configButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(.0f, .0f, 80.0f, 40.0f)];
    [button setTitle:@"点击弹出" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.center = self.view.center;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick:(id)sender
{
    [self showPopMenu];
}

- (void)showPopMenu
{
    XRPopMenuView *menuView = [[XRPopMenuView alloc] init];
    [menuView addMenuItemWithTitle:@"创建标签" andIcon:[UIImage imageNamed:@"editButton"] andSelectedBlock:^{
        NSLog(@"创建标签 selected");
    }];
    [menuView addMenuItemWithTitle:@"添加标签" andIcon:[UIImage imageNamed:@"markButton"] andSelectedBlock:^{
        NSLog(@"添加标签 selected");
    }];
    [menuView addMenuItemWithTitle:@"创建标签" andIcon:[UIImage imageNamed:@"editButton"] andSelectedBlock:^{
        NSLog(@"创建标签 selected");
    }];
    [menuView addMenuItemWithTitle:@"添加标签" andIcon:[UIImage imageNamed:@"markButton"] andSelectedBlock:^{
        NSLog(@"添加标签 selected");
    }];
    [menuView addMenuItemWithTitle:@"创建标签" andIcon:[UIImage imageNamed:@"editButton"] andSelectedBlock:^{
        NSLog(@"创建标签 selected");
    }];
    [menuView addMenuItemWithTitle:@"添加标签" andIcon:[UIImage imageNamed:@"markButton"] andSelectedBlock:^{
        NSLog(@"添加标签 selected");
    }];

    [menuView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
