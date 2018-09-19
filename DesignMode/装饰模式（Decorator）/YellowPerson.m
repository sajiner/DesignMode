//
//  YellowPerson.m
//  DesignMode
//
//  Created by sajiner on 2018/9/19.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import "YellowPerson.h"

@interface YellowPerson ()

@property (nonatomic, copy) NSString *name; ///< name

@end

@implementation YellowPerson

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)show {
    NSLog(@"我是：%@", self.name);
}

@end
