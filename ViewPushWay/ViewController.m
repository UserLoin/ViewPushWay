//
//  ViewController.m
//  ViewPushWay
//
//  Created by 咖达 on 2017/7/3.
//  Copyright © 2017年 咖达. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Push前";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    CustomView *view = [[CustomView alloc]init];
    [self.view addSubview:view];
    view.frame = self.view.frame;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
