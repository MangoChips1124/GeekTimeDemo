//
//  ViewController.m
//  GeekTime
//
//  Created by karajan on 2021/2/8.
//  Copyright © 2021 karajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"进入ViewController");
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 100, 100)];
    view2.backgroundColor = [UIColor greenColor];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    [view2 addGestureRecognizer:tapGesture];
    [self.view addSubview:view2];
}

-(void)pushController{
    NSLog(@"点击view");
    
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"内容";
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题" style:UIBarButtonItemStylePlain target:self action:nil];
    
    
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
