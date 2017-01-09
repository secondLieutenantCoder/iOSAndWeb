//
//  InterViewController.m
//  iosWeb
//
//  Created by INTCO 王伟 on 2017/1/7.
//  Copyright © 2017年 INTCO 王伟. All rights reserved.
//

#import "InterViewController.h"

@interface InterViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *interWeb;

@end

@implementation InterViewController

#pragma mark - 加载webView 的内容
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * str = @"http://1.intcowangwei.applinzi.com/TestFiles/interIos.html";
    NSURL * url = [NSURL URLWithString:str];
    [self.interWeb loadRequest:[NSURLRequest requestWithURL:url]];
}
#pragma mark - 改变transiform
- (IBAction)changeTransitionAction:(UIButton *)sender {
    [self.interWeb stringByEvaluatingJavaScriptFromString:@"rotationAction()"];
}
#pragma mark - 改变颜色
- (IBAction)changeColorAction:(UIButton *)sender {
    
    [self.interWeb stringByEvaluatingJavaScriptFromString:@"changeColor()"];
}
#pragma mark - 改变宽度
- (IBAction)changeWidthAction:(UIButton *)sender {
    
    [self.interWeb stringByEvaluatingJavaScriptFromString:@"changeWidth()"];
}

#pragma mark - 返回按钮
- (IBAction)backAction:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
