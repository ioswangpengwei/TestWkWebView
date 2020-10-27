//
//  Person.m
//  TestWkWebView
//
//  Created by MacW on 2020/7/24.
//  Copyright © 2020 MacW. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (void)initialize
{
    NSLog(@"%s",__func__);

}

+ (void)load {
    NSLog(@"%s",__func__);
}
- (void)setFirstName:(NSString *)firstName {
    _firstName = firstName;
}

@end
