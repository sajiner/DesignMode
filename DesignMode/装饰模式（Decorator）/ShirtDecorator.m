//
//  ShirtDecorator.m
//  DesignMode
//
//  Created by sajiner on 2018/9/19.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import "ShirtDecorator.h"

@implementation ShirtDecorator

- (void)show {
    [super show];
    [self addBehavior];
}

- (void)addBehavior {
    NSLog(@"-- 穿衬衫");
}


@end
