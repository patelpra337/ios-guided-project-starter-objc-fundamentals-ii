//
//  LSITipController.m
//  Tips
//
//  Created by patelpra on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"
#import "LSITip.h"
//#import "../Model/

// 9.  Added a private interface and mutable ("var") array as an instance variable
@interface LSITipController () {
    NSMutableArray *_internalTips;
}

@end

@implementation LSITipController
// 10 Add instancetype init and the methods noted below
- (instancetype)init
{
    if (self = [super init]) {
        _internalTips = [[NSMutableArray alloc] init];
        
#ifdef DEBUG
        // FIXME: Test Mode (Remove for production)
#pragma message "This should be removed eventually!!"
        [self addTestData];
#endif
    }
    return self;
}

- (void)addTestData
{
    LSITip *aTip = [[LSITip alloc] initWithName:@"Sushi"
                                           total:200.
                                      splitCount:4
                                   tipPercentage:20.];
    
    [_internalTips addObject:aTip];
    
    [_internalTips addObject:[[LSITip alloc] initWithName:@"Pizza"
                                                    total:30.
                                               splitCount:8
                                            tipPercentage:25.]];
}

#pragma mark - Methods

- (NSArray<LSITip *> *)tips
{
    return _internalTips.copy;
}

- (NSUInteger)tipCount
{
    return _internalTips.count;
}

- (LSITip *)tipAtIndex:(NSUInteger)index
{
    return [_internalTips objectAtIndex:index];
}

- (void)addTip:(LSITip *)aTip
{
    [_internalTips addObject:aTip];
}

@end
