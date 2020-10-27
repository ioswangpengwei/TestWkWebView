//
//  MyException.h
//  TestWkWebView
//
//  Created by MacW on 2020/10/14.
//  Copyright © 2020 MacW. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyExceptionHandler : NSObject
+(void)installUncaughtSignalExceptionHandler;
@end

NS_ASSUME_NONNULL_END
