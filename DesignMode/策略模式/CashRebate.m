//
//  CashRebate.m
//  DesignMode
//
//  Created by sajiner on 2018/3/19.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import "CashRebate.h"

@interface CashRebate ()

@property (nonatomic, assign) double moneyRebate; ///< 打几折

@end

@implementation CashRebate

- (instancetype)initWithMoneyRebate:(double)moneyRebate {
    self = [super init];
    if (self) {
        self.moneyRebate = moneyRebate;
    }
    return self;
}

- (double)acceptCashWithOriginal:(double)oriMoney {
    return (oriMoney * self.moneyRebate);
}

@end
