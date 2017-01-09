//
//  WebViewController.m
//  iosWeb
//
//  Created by INTCO 王伟 on 2017/1/7.
//  Copyright © 2017年 INTCO 王伟. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setSubViews];
}

- (void) setSubViews{

    NSString * str = @"http://1.intcowangwei.applinzi.com/screenOrientation.html";
    
    NSURL * url = [NSURL URLWithString:str];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}
- (IBAction)backAction:(UIButton *)sender {
    
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

@end
