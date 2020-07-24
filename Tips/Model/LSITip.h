//
//  LSITip.h
//  Tips
//
//  Created by patelpra on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSITip : NSObject

// 1.  Setup property; crtl+option+drag down to add readonly for all properties
@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) double total;
@property (nonatomic, readonly) NSInteger splitCount;
@property (nonatomic, readonly) double tipPercentage;

// 2.  Setup Initializer
- (instancetype)initWithName:(NSString *)aName
                       total:(double)aTotal
                  splitCount:(NSInteger)aSplitCount
               tipPercentage:(double)aTipPercentage;

@end

NS_ASSUME_NONNULL_END
