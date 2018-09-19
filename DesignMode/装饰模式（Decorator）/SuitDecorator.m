//
//  SuitDecorator.m
//  DesignMode
//
//  Created by sajiner on 2018/9/19.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import "SuitDecorator.h"

@implementation SuitDecorator

- (void)show {
    [super show];
    [self addBehavior];
}

- (void)addBehavior {
    NSLog(@"-- 穿西服");
}

@end
