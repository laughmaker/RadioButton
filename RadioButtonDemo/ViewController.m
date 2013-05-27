//
//  ViewController.m
//  RadioButtonDemo
//
//  Created by line0 on 13-5-27.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import "ViewController.h"
#import "RadioButton.h"

@interface ViewController () <RadioButtonDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect rect = CGRectMake(20, 20, 160, 25);
    RadioButton *rb1 = [[RadioButton alloc] initWithFrame:rect groupId:@"group0" index:0];
    [rb1 setText:@"生当作人杰"];
    [self.view addSubview:rb1];
    
    rect = CGRectMake(20, 20 + 25 + 10, 160, 25);
    RadioButton *rb2 = [[RadioButton alloc] initWithFrame:rect groupId:@"group0" index:1];
    [rb2 setText:@"死亦为鬼熊"];
    [self.view addSubview:rb2];

    rect = CGRectMake(20, 20 + (25 + 10) * 2, 160, 25);
    RadioButton *rb3 = [[RadioButton alloc] initWithFrame:rect groupId:@"group0" index:2];
    [rb3 setText:@"至今思项羽"];
    [rb3 setSelected:YES];
    [self.view addSubview:rb3];

    rect = CGRectMake(20, 20 + (25 + 10) * 3, 160, 25);
    RadioButton *rb4 = [[RadioButton alloc] initWithFrame:rect groupId:@"group0" index:3];
    [rb4 setText:@"不肯过江东"];
    [self.view addSubview:rb4];
    
    
    rect = CGRectMake(20, 20 + (25 + 10) * 6, 160, 25);
    RadioButton *rb5 = [[RadioButton alloc] initWithFrame:rect groupId:@"group1" index:0];
    [rb5 setText:@"wskideal"];
    [rb5 setSelected:YES];
    [self.view addSubview:rb5];

    rect = CGRectMake(20, 20 + (25 + 10) * 7, 160, 25);
    RadioButton *rb6 = [[RadioButton alloc] initWithFrame:rect groupId:@"group1" index:1];
    [rb6 setText:@"makeLaugh"];
    [self.view addSubview:rb6];
    
    [RadioButton addObserver:self forGroupId:@"group0"];
    [RadioButton addObserver:self forGroupId:@"group1"];
}


- (void)radioButtonSelectedAtIndex:(NSUInteger)index inGroup:(NSString *)groupId
{
    NSLog(@"index:%d, groupId:%@", index, groupId);
}

@end
