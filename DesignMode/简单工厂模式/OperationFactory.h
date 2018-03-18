//
//  OperationFactory.h
//  DesignMode
//
//  Created by 张鑫 on 2018/3/18.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

@interface OperationFactory : NSObject

+ (Operation *)getResultWithOperator: (NSString *)operator;

@end
