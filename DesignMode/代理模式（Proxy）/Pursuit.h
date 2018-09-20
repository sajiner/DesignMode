//
//  Pursuit.h
//  DesignMode
//
//  Created by sajiner on 2018/9/20.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGiveGift.h"
#import "SchoolGirl.h"

@interface Pursuit : NSObject <IGiveGift>

@property (nonatomic, copy) NSString *name; ///< 姓名

- (instancetype)initWithGirl: (SchoolGirl *)girl;

@end
