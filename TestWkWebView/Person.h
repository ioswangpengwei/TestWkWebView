//
//  Person.h
//  TestWkWebView
//
//  Created by MacW on 2020/7/24.
//  Copyright © 2020 MacW. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy,nullable) NSString *firstName;
@property (nonatomic, copy,nullable) NSString *lastName;
@property (nonatomic, copy) NSString *fullName;


@end

NS_ASSUME_NONNULL_END
