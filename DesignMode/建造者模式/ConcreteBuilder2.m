//
//  ConcreteBuilder2.m
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import "ConcreteBuilder2.h"

@implementation ConcreteBuilder2

- (void)builderPartA {
    [self.product addPart:@"部件X"];
}

- (void)builderPartB {
    [self.product addPart:@"部件Y"];
}

- (Product *)getResult {
    return self.product;
}

@end
