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
#import "YellowPerson.h"
#import "ShirtDecorator.h"
#import "SuitDecorator.h"
#import "UnderwearDecorator.h"

@interface ViewController ()

@property (nonatomic, strong) Operation *ope;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    YellowPerson *person = [[YellowPerson alloc] initWithName:@"Freak"];
    ShirtDecorator *shirtD = [[ShirtDecorator alloc] initWithPerson:person];
    SuitDecorator *suitD = [[SuitDecorator alloc] initWithPerson:shirtD];
    UnderwearDecorator *underWearD = [[UnderwearDecorator alloc] initWithPerson:suitD];
    [underWearD show];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Operation *ope = [OperationFactory getResultWithOperator:@"/"];
    ope.numberB = 20.0;
    ope.numberA = 10.0;
    NSLog(@"%f", [ope getResult]);
}


@end
