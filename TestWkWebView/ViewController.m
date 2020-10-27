//
//  ViewController.m
//  TestWkWebView
//
//  Created by MacW on 2020/7/23.
//  Copyright © 2020 MacW. All rights reserved.
//

#import "ViewController.h"
#import <GPUImage/GPUImage.h>
#import <WebKit/WebKit.h>
//#import <CUMobilePayPlugin/UMSPPPayUnifyPayPlugin.h>
#import "Person.h"
#import "Teacher.h"

NSString *demo_getLastName(id self,SEL selector) {
    return @"Apple";
}
@interface ViewController ()<WKScriptMessageHandler>

@property (nonatomic, strong) WKWebView *myWebView;

@property (nonatomic, strong) Person *person1;
@property (nonatomic, strong) Person *person2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 50, 100, 100)];
    [self.view addSubview:imageView];
    GPUImagePicture *picture = [[GPUImagePicture alloc] initWithImage:[UIImage imageNamed:@"test.png"]];
    GPUImageSepiaFilter *fiter = [[GPUImageSepiaFilter alloc] init];
    [picture addTarget:fiter];
//    [fiter addTarget:imageView];
    [fiter useNextFrameForImageCapture];
    [picture processImage];
    [imageView setImage:[fiter imageFromCurrentFramebuffer]];
    NSLog(@"----%d",[GPUImageContext deviceSupportsRedTextures]);

    
    
}


-(void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage*)message {
    if ([message.name isEqualToString:@"sharewith"]) {
        NSDictionary *diction = message.body;
        NSString *payDataJsonStr = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:diction[@"param"] options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
//          [UMSPPPayUnifyPayPlugin payWithPayChannel:CHANNEL_ALIPAY payData:payDataJsonStr callbackBlock:^(NSString *resultCode, NSString *resultInfo) {
//             
//          }];
    }
    
}


-(WKWebView *)myWebView {
    if (! _myWebView) {
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        configuration.preferences = [[WKPreferences alloc] init];

        configuration.preferences.minimumFontSize = 10;

        configuration.preferences.javaScriptEnabled = YES;

        configuration.preferences.javaScriptCanOpenWindowsAutomatically = YES;
        configuration.userContentController = [[WKUserContentController alloc] init];

        configuration.processPool = [[WKProcessPool alloc] init];

        
        _myWebView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:configuration];
        _myWebView.backgroundColor = [UIColor grayColor];
//        _myWebView.UIDelegate = self;
//        _myWebView.navigationDelegate =self;
    [self.view addSubview:_myWebView];
        
        
    }
    return _myWebView;;
}

@end
