
//
//  CustomView.m
//  ViewPushWay
//
//  Created by 咖达 on 2017/7/3.
//  Copyright © 2017年 咖达. All rights reserved.
//

#import "CustomView.h"
#import "ViewPushViewController.h"

@implementation CustomView

- (instancetype)init{
    if (self = [super init]) {
        [self createUI];
    }
    return self;
}

- (UIViewController *)viewController {
    for (UIView *next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

- (void)createUI{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 50);
    btn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"点击跳转" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(pushToNextController) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pushToNextController{
    ViewPushViewController *vc = [[ViewPushViewController alloc]init] ;
    vc.hidesBottomBarWhenPushed = YES ;
    [[self viewController].navigationController pushViewController:vc animated:YES] ; //通过找到的控制器进行跳转
}
@end
