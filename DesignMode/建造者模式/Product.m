//
//  Product.m
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import "Product.h"

@interface Product ()

@property (nonatomic, strong) NSMutableArray *parts; ///< parts

@end

@implementation Product

- (void)addPart:(NSString *)part {
    [self.parts addObject:part];
}

- (void)show {
    NSLog(@"\n产品 创建");
    for (NSString *part in _parts) {
        NSLog(@"%@", part);
    }
}

- (NSMutableArray *)parts {
    if (!_parts) {
        _parts = [NSMutableArray arrayWithCapacity:4];
    }
    return _parts;
}

@end
