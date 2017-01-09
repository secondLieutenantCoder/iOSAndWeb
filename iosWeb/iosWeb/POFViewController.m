//
//  POFViewController.m
//  iosWeb
//
//  Created by INTCO 王伟 on 2017/1/7.
//  Copyright © 2017年 INTCO 王伟. All rights reserved.
//

#import "POFViewController.h"

@interface POFViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *POFWeb;

@end

@implementation POFViewController


- (IBAction)backAction:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    NSString * str = @"http://192.168.81.220:8888/medicalApprove/pickOrderFill.php";
    
    NSURL * url = [NSURL URLWithString:str];
    
    [self.POFWeb loadRequest:[NSURLRequest requestWithURL:url]];
    
}


@end
