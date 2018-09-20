//
//  Proxy.h
//  DesignMode
//
//  Created by sajiner on 2018/9/20.
//  Copyright © 2018年 sajiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGiveGift.h"
#import "Pursuit.h"

@interface Proxy : NSObject <IGiveGift>

@property (nonatomic, strong) Pursuit *pursuit; ///< <#describe#>

@end
