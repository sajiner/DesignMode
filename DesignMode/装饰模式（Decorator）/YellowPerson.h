//
//  YellowPerson.h
//  DesignMode
//
//  Created by sajiner on 2018/9/19.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface YellowPerson : NSObject <Person>

/**
 初始化方法

 @param name 姓名
 @return 人对象
 */
- (instancetype)initWithName: (NSString *)name;

@end
