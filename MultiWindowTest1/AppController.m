//
//  AppController.m
//  MultiWindow
//
//  Created by tanbo on 2016/03/24.
//  Copyright © 2016年 tanbo. All rights reserved.
//

#import "AppController.h"
#import "SubWindowController.h"
#import "RelayObject.h"

@implementation AppController

- (instancetype)init
{
    self = [super init];
    if (self) {
        subWindowController = nil;
    }
    return self;
}

- (IBAction) showSubWindow:(id)sender
{
    if(!subWindowController) {
        subWindowController = [[SubWindowController alloc] initWithWindowNibName:@"SubWindow"];
    }
    [subWindowController showWindow:self];
    
    [RelayObject setTestStr:[textField stringValue]];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"testStrNotification" object:self];
}

//テキストフィールドの編集が完了した際に呼び出される
-(void)controlTextDidEndEditing:(NSNotification *)obj
{
    NSTextField *textFO = (NSTextField*)obj.object;
    NSString *textStr = [textFO stringValue];
    
    [RelayObject setTestStr:textStr];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"testStrNotification" object:self];
}
@end
