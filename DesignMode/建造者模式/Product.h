//
//  Product.h
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Product : NSObject

- (void)addPart: (NSString *)part;

- (void)show;

@end

NS_ASSUME_NONNULL_END
