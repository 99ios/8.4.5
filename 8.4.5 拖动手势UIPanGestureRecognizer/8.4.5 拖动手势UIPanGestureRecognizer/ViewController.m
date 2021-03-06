//
//  ViewController.m
//  8.4.5 拖动手势UIPanGestureRecognizer
//
//  Created by 李维佳 on 2017/4/4.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 250, 150, 150)];
    imageView.image = [UIImage imageNamed:@"99logo"];
    imageView.userInteractionEnabled = YES;
    [self.view addSubview:imageView];
    //拖动手势
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    [imageView addGestureRecognizer:panGesture];
}

-(void) pan: (UIPanGestureRecognizer *) gesture {
    NSLog(@"%s",__func__);
    //获取位置变化量translation
    CGPoint translation = [gesture translationInView:self.view];
    gesture.view.center = CGPointMake(gesture.view.center.x + translation.x, gesture.view.center.y + translation.y);
    [gesture setTranslation:CGPointZero inView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
