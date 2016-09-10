//
//  SubWindowAppController.m
//  MultiWindowTest1
//
//  Created by tanbo on 2016/09/10.
//  Copyright © 2016年 tanbo. All rights reserved.
//

#import "SubWindowAppController.h"
#import "RelayObject.h"

@implementation SubWindowAppController

@synthesize testStr = _testStr;

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationTest) name:@"testStrNotification" object:nil];
    }
    return self;
}


- (void) notificationTest
{
    self.testStr = [RelayObject TestStr]; // _testStr = [RelayObject TestStr];ではbindが反映されない
}
@end
