//
//  CashReturn.h
//  DesignMode
//
//  Created by sajiner on 2018/3/19.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import "CashSuper.h"

@interface CashReturn : CashSuper

- (instancetype)initWithMoneyCondition: (double)moneyCondition andMoneyReturn: (double)moneyReturn;

@end
