//
//  LSITip.m
//  Tips
//
//  Created by patelpra on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITip.h"

@implementation LSITip

// 3. Copy same initializer
- (instancetype)initWithName:(NSString *)aName
                       total:(double)aTotal
                  splitCount:(NSInteger)aSplitCount
               tipPercentage:(double)aTipPercentage;
{
// 4.  Must have below boiler plate code if u have initializer
    if (self = [super init]) {
// 5.  Define initializer with _ option since the properties are read-only
        _name = aName.copy; // add the copy option if its muttable
        _total = aTotal;
        _splitCount = aSplitCount;
        _tipPercentage = aTipPercentage;
    }
    return self;
}

@end
