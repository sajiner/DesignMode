//
//  OperationFactory.m
//  DesignMode
//
//  Created by 张鑫 on 2018/3/18.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationAdd.h"
#import "OpetationSub.h"
#import "OpetationMul.h"
#import "OperationDiv.h"

typedef NS_ENUM(NSInteger, OperatorType) {
    Default,
    Add,
    Sub,
    Mul,
    Div
};

@implementation OperationFactory

+ (Operation *)getResultWithOperator:(NSString *)operator {
    
    Operation *ope = nil;
    OperatorType operatorType = [self convertOperatorWithOperatorStr:operator];
    switch (operatorType) {
        case Add:
            ope = [[OperationAdd alloc] init];
            break;
            
        case Sub:
            ope = [[OpetationSub alloc] init];
            break;
            
        case Mul:
            ope = [[OpetationMul alloc] init];
            break;
            
        case Div:
            ope = [[OperationDiv alloc] init];
            break;
            
        default:
            break;
    }
    
    return ope;
}


+ (OperatorType)convertOperatorWithOperatorStr: (NSString *)opeStr {
    if ([opeStr isEqualToString:@"+"]) {
        return Add;
    } else if ([opeStr isEqualToString:@"-"]) {
        return Sub;
    } else if ([opeStr isEqualToString:@"*"]) {
        return Mul;
    } else if ([opeStr isEqualToString:@"/"]) {
        return Div;
    } else {
        return Default;
    }
}


@end
