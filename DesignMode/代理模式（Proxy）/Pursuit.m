//
//  Pursuit.m
//  DesignMode
//
//  Created by sajiner on 2018/9/20.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import "Pursuit.h"

@interface Pursuit ()

@property (nonatomic, strong) SchoolGirl *girl; ///< <#describe#>

@end

@implementation Pursuit

- (instancetype)initWithGirl:(SchoolGirl *)girl {
    self = [super init];
    if (self) {
        self.girl = girl;
    }
    return self;
}

- (void)giveDolls {
    NSLog(@"%@, %@送你洋娃娃", _girl.name, _name);
}

- (void)giveFlowers {
    NSLog(@"%@, %@送你🌹", _girl.name, _name);
}

- (void)giveChocolate {
    NSLog(@"%@, %@送你巧克力", _girl.name, _name);
}

@end
