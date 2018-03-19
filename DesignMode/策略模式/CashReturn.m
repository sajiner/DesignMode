//
//  CashReturn.m
//  DesignMode
//
//  Created by sajiner on 2018/3/19.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import "CashReturn.h"

@interface CashReturn ()

@property (nonatomic, assign) double moneyCondition; ///< 返利条件
@property (nonatomic, assign) double moneyReturn; ///< 返多少钱

@end

@implementation CashReturn

- (instancetype)initWithMoneyCondition:(double)moneyCondition andMoneyReturn:(double)moneyReturn {
    self = [super init];
    if (self) {
        self.moneyReturn = moneyReturn;
        self.moneyCondition = moneyCondition;
    }
    return self;
}

- (double)acceptCashWithOriginal:(double)oriMoney {
    
    if (oriMoney > self.moneyCondition) {
        return oriMoney - (oriMoney / self.moneyCondition) * self.moneyReturn;
    }
    return oriMoney;
}

@end
