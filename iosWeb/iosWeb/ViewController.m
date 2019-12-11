//
//  ViewController.m
//  iosWeb
//
//  Created by INTCO 王伟 on 2017/1/7.
//  Copyright © 2017年 INTCO 王伟. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
#import "POFViewController.h"
#import "InterViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)pickOrderAction:(UIButton *)sender {
    
    POFViewController * pofVC = [[POFViewController alloc] init];
    
    [self presentViewController:pofVC animated:YES completion:nil];
}

- (IBAction)goWebAction:(UIButton *)sender {
    
    
    WebViewController * webVC = [[WebViewController alloc] init];
    
    [self.view addSubview:webVC.view];
    
    [self addChildViewController:webVC];
    webVC.view.transform = CGAffineTransformMakeScale(0.2, 0.2);
    
    [UIView animateWithDuration:0.5 animations:^{
//        webVC.view.frame = self.view.bounds;
        webVC.view.transform = CGAffineTransformIdentity;
    }];
    
}
- (IBAction)InterAction:(UIButton *)sender {
    
    InterViewController * interVC = [[InterViewController alloc] init];
    interVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    [self presentViewController:interVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
