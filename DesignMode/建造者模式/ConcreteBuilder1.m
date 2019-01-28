//
//  ConcreteBuilder1.m
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import "ConcreteBuilder1.h"

@implementation ConcreteBuilder1

- (void)builderPartA {
    [self.product addPart:@"部件A"];
}

- (void)builderPartB {
    [self.product addPart:@"部件B"];
}

- (Product *)getResult {
    return self.product;
}


@end
