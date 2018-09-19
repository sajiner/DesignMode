//
//  Decorator.m
//  DesignMode
//
//  Created by sajiner on 2018/9/19.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import "Decorator.h"

@interface Decorator ()

@property (nonatomic, strong) id <Person>person;

@end

@implementation Decorator

- (instancetype)initWithPerson:(id<Person>)person {
    self = [super init];
    if (self) {
        _person = person;
    }
    return self;
}

- (void)show {
    [self.person show];
}

@end
