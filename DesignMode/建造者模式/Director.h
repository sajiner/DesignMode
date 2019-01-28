//
//  Director.h
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject

- (void)constructBuilder: (Builder *)builder;

@end

NS_ASSUME_NONNULL_END
