//
//  OperationDiv.m
//  DesignMode
//
//  Created by 张鑫 on 2018/3/18.
//  Copyright © 2018年 张鑫. All rights reserved.
//

#import "OperationDiv.h"

@implementation OperationDiv

- (double)getResult {
    if (self.numberB == 0) {
        @throw [NSException exceptionWithName:NSExtensionItemsAndErrorsKey reason:@"除数不能为0." userInfo:nil];
    }
    return self.numberA / self.numberB;
}

@end
