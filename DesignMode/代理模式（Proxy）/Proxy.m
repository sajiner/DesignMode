//
//  Proxy.m
//  DesignMode
//
//  Created by sajiner on 2018/9/20.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import "Proxy.h"

@interface Proxy ()



@end

@implementation Proxy

- (void)giveChocolate {
    [self.pursuit giveChocolate];
}

- (void)giveFlowers {
    [_pursuit giveFlowers];
}

- (void)giveDolls {
    [_pursuit giveDolls];
}

@end
