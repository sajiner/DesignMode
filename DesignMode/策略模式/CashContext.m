//
//  CashContext.m
//  DesignMode
//
//  Created by sajiner on 2018/3/19.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import "CashContext.h"
#import "CashNomal.h"
#import "CashRebate.h"
#import "CashReturn.h"

@interface CashContext ()

@property (nonatomic, strong) CashSuper *cashStrategy; ///< 促销类
 @end

@implementation CashContext

- (instancetype)initWithCashType:(CashType)cashType {
    self = [super init];
    if (self) {
        switch (cashType) {
            case CashTypeNomal:
                self.cashStrategy = [[CashNomal alloc] init];
                break;
                
            case CashTypeRebate_eight:
                self.cashStrategy = [[CashRebate alloc] initWithMoneyRebate:0.8];
                break;
                
            case CashTypeReturn_300to100:
                self.cashStrategy = [[CashReturn alloc] initWithMoneyCondition:300.0 andMoneyReturn:100.0];
                break;
                
            default:
                break;
        }
    }
    return self; 
}

- (double)getResultWithOriMoney:(double)oriMoney {
    return [self.cashStrategy acceptCashWithOriginal:oriMoney];
}

@end
