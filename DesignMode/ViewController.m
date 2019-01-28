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
#import "SchoolGirl.h"
#import "Proxy.h"
#import "Director.h"
#import "ConcreteBuilder1.h"
#import "ConcreteBuilder2.h"

@interface ViewController ()

@property (nonatomic, strong) Operation *ope;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Director *director = [[Director alloc] init];
    Builder *b1 = [[ConcreteBuilder1 alloc] init];
    Builder *b2 = [[ConcreteBuilder2 alloc] init];
    
    [director constructBuilder:b1];
    Product *p1 = [b1 getResult];
    [p1 show];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Operation *ope = [OperationFactory getResultWithOperator:@"/"];
    ope.numberB = 20.0;
    ope.numberA = 10.0;
    NSLog(@"%f", [ope getResult]);
}

- (void)testDecorator {
    YellowPerson *person = [[YellowPerson alloc] initWithName:@"Freak"];
    ShirtDecorator *shirtD = [[ShirtDecorator alloc] initWithPerson:person];
    SuitDecorator *suitD = [[SuitDecorator alloc] initWithPerson:shirtD];
    UnderwearDecorator *underWearD = [[UnderwearDecorator alloc] initWithPerson:suitD];
    [underWearD show];
}

- (void)proxyTest {
    SchoolGirl *girl = [[SchoolGirl alloc] init];
    girl.name = @"Lily";
    
    Proxy *proxy = [[Proxy alloc] init];
    proxy.pursuit = [[Pursuit alloc] initWithGirl:girl];
    proxy.pursuit.name = @"Jim";
    [proxy giveChocolate];
    [proxy giveDolls];
    [proxy giveFlowers];
}

@end
