//
//  Builder.m
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import "Builder.h"

@implementation Builder

- (void)builderPartA {
}

- (void)builderPartB {
}

- (Product *)getResult {
    return self.product;
}

- (Product *)product {
    if (!_product) {
        _product = [[Product alloc] init];
    }
    return _product;
}

@end
