//
//  Decorator.h
//  DesignMode
//
//  Created by sajiner on 2018/9/19.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Decorator : NSObject<Person>

- (instancetype)initWithPerson: (id <Person>)person;

@end
