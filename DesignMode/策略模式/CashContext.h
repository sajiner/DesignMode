//
//  CashContext.h
//  DesignMode
//
//  Created by sajiner on 2018/3/19.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

typedef NS_ENUM(NSInteger, CashType) {
    CashTypeDefault,
    CashTypeNomal,
    CashTypeRebate_eight,
    CashTypeReturn_300to100
};

@interface CashContext : NSObject

/**
 构造方法

 @param cashType 促销类型
 @return cashContext
 */
- (instancetype)initWithCashType: (CashType)cashType;

- (double)getResultWithOriMoney: (double)oriMoney;

@end
