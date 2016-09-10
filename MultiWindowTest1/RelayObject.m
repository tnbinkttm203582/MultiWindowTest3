//
//  RelayObject.m
//  MultiWindowTest1
//
//  Created by tanbo on 2016/09/10.
//  Copyright © 2016年 tanbo. All rights reserved.
//

#import "RelayObject.h"

static NSString *testRelayStr = nil;

@implementation RelayObject

+ (void) setTestStr:(NSString *) str
{
    testRelayStr = str;
}

+ (NSString *) TestStr
{
    return testRelayStr;
}

@end
