//
//  Director.m
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import "Director.h"

@implementation Director

- (void)constructBuilder:(Builder *)builder {
    [builder builderPartA];
    [builder builderPartB];
}

@end
