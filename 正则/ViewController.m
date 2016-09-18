//
//  ViewController.m
//  正则
//
//  Created by feifanIt on 16/9/14.
//  Copyright © 2016年 Yolanda刘瑶. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//对字符串操作的一种逻辑公式
//1、通过正则表达式可以检测给定的字符串是否符合我们定义的逻辑
//2、也可从字符串中获取我们想要的特定部分


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //判断手机号
    
    //需检测的字符串
    NSString *phoneNum=@"13600000000";
    
    //定义规则
    //NSString *regex=@"^$";
    
    //第一位：1，第二位：[3|4|5|6|7|8|9]，后九位：[0-9]{9}
    NSString *regex=@"^1[3|4|5|6|7|8|9][0-9]{9}$";
    
    //谓词，自动匹配
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    
    //判断
    [predicate evaluateWithObject:phoneNum];
    
//    NSLog(@"---%d",[predicate evaluateWithObject:phoneNum]);
    
    
    
    //座机
    
    NSString *telephone=@"0578-000000";
    NSString *haha=@"^\\d{3,4}-\\d{7,8}$";
//    NSString *haha1=@"^0\\d{2,3}-\\d{7,8}$";
    //\d->[0-9],3至4位{3,4}
    NSPredicate *predicate1=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",haha];
    
    //判断
    [predicate1 evaluateWithObject:telephone];
    
//    NSLog(@"===%d",[predicate1 evaluateWithObject:telephone]);
    
    
    
    //身份证号
    //1、18位，
    //2、最后一位xX
    
    NSString *ID=@"612727199012120000";
    NSString *ruleI=@"^\\d{6}[00-12]{2}\\d{4}[x|X]*$";
    NSPredicate *preI=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",ruleI];
    NSLog(@"%d",[preI evaluateWithObject:ID]);
    
    
    //邮箱
    //1、@前，英文、数字、._%+-，
    //2、.前，英文、数字、._，
    //3、.后，英文 2-3位
    
    //  NSString *qqqq=@"1076427542@qq.com";
    NSString *qqqq=@"22222222@qq.com";
    
    NSString *ruleII=@"^[a-z|A-Z]|[0-9]|.|_|%|+|-{7,8}@[a-z|A-Z]|[0-9]|.|_{2}.[a-z|A-Z]{2,3}$";
    NSPredicate *preII=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",ruleII];
    NSLog(@"%d",[preII evaluateWithObject:qqqq]);
    
    
    //中文
    NSString *Chinese=@"借记卡和空间";
    NSString *kkkk=@"^[\u4e00-\u9fa5]{0,}$";
    NSPredicate *preIII=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",kkkk];
    NSLog(@"%d",[preIII evaluateWithObject:Chinese]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
