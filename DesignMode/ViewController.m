//
//  ViewController.m
//  DesignMode
//
//  Created by 张鑫 on 2018/3/18.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import "ViewController.h"
#import "OperationFactory.h"
#import "CashContext.h"

@interface ViewController ()

@property (nonatomic, strong) Operation *ope;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CashContext *context = [[CashContext alloc] initWithCashType:CashTypeReturn_300to100];
    double result = [context getResultWithOriMoney:300 * 4];
    NSLog(@"%f", result);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Operation *ope = [OperationFactory getResultWithOperator:@"/"];
    ope.numberB = 20.0;
    ope.numberA = 10.0;
    NSLog(@"%f", [ope getResult]);
}


@end
