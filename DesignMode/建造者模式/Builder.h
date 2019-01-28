//
//  Builder.h
//  DesignMode
//
//  Created by sajiner on 2019/1/28.
//  Copyright © 2019 sajiner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

NS_ASSUME_NONNULL_BEGIN

@interface Builder : NSObject

@property (nonatomic, strong) Product *product; ///< product

- (void)builderPartA;
- (void)builderPartB;
- (Product *)getResult;

@end

NS_ASSUME_NONNULL_END
