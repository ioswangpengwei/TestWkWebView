//
//  MyException.m
//  TestWkWebView
//
//  Created by MacW on 2020/10/14.
//  Copyright © 2020 MacW. All rights reserved.
//

#import "MyExceptionHandler.h"

@implementation MyExceptionHandler

void MyUncaughtExceptionHandler(NSException *exception) {
    NSLog(@"%@",exception);
    
}
+(void)installUncaughtSignalExceptionHandler {
    NSSetUncaughtExceptionHandler(&MyUncaughtExceptionHandler);
}
@end
