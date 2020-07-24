//
//  LSITipController.h
//  Tips
//
//  Created by patelpra on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

// 7.  Add below forward class declaration for LSITip; Don't try to import header files but use class  forward declaration, this will speed up complier.
@class LSITip;

NS_ASSUME_NONNULL_BEGIN

@interface LSITipController : NSObject
// 6.  Create new property
@property (nonatomic, readonly, copy) NSArray<LSITip *> *tips;

// 8.  Create helper methods

@property (nonatomic, readonly) NSUInteger tipCount;

- (LSITip *)tipAtIndex:(NSUInteger)index;

- (void)addTip:(LSITip *)aTip;

@end

NS_ASSUME_NONNULL_END
