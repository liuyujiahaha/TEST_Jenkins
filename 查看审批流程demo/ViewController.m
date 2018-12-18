//
//  ViewController.m
//  查看审批流程demo
//
//  Created by liuyujia on 2018/12/11.
//  Copyright © 2018 liuyujia. All rights reserved.
//

#import "ViewController.h"

#import "constant.h"
#import "FunctionDefine.h"

@interface ViewController ()
@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) UIDatePicker *startDatePicker;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (IBAction)oneAction:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setInteger:0 forKey:@"HOST"];
    
    
    UDSaveData(0, @"HOST");
    [defaults synchronize];
    
//    NSLog(@"%@",Host);
    
}






- (IBAction)twoAction:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:0 forKey:@"HOST"];
    [defaults synchronize];
    
//    NSLog(@"%@",Host);
}


- (IBAction)threeAction:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:0 forKey:@"HOST"];
    [defaults synchronize];
    
//    NSLog(@"%@",Host);
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    static int i = 0;
    i++;
    NSLog(@"%d",i);
}

-(void)setUIWebviewcookie {
    
    NSString *token = @"eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NDM4OTU2NDUsInN1YiI6IntcImhyT3JnYW5pemF0aW9uSWRcIjoxNjYzLFwibW9iaWxlXCI6XCIxODgyMDIwNjY2N1wiLFwidXNlckxvZ2luTmFtZVwiOlwiMjAxNzUyMThcIixcInVzZXJOYW1lXCI6XCLkv57liJrpkohcIixcInVzZXJJZFwiOjg2Nzl9IiwiZXhwIjoxNTQ0NTAwNDQ1LCJuYmYiOjE1NDM4OTU2NDV9.OqWklywmZojGShXSzLD7DvbomwJAuhk5zKAZgbnQH9I";
    
    NSDictionary *dic1 = [NSDictionary dictionaryWithObjectsAndKeys:
                         @"zhengtongautoSSOCookieV1", NSHTTPCookieName,
                         token, NSHTTPCookieValue,
                         @".zhengtongauto.com", NSHTTPCookieDomain,//[url host], NSHTTPCookieDomain,//
                         @"/", NSHTTPCookiePath,//[url path], NSHTTPCookiePath,//
                         @"7200", NSHTTPCookieMaximumAge,
                         nil];
    
    NSHTTPCookie *cookie1 = [NSHTTPCookie cookieWithProperties:dic1];
    
    NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"domain", NSHTTPCookieName,
                          @".zhengtongauto.com", NSHTTPCookieValue,
                          @".zhengtongauto.com", NSHTTPCookieDomain,//[url host], NSHTTPCookieDomain,//
                          @"/", NSHTTPCookiePath,//[url path], NSHTTPCookiePath,//
                          @"7200", NSHTTPCookieMaximumAge,
                         nil];
    NSHTTPCookie *cookie2 = [NSHTTPCookie cookieWithProperties:dic2];

    NSDictionary *dic3 = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"path", NSHTTPCookieName,
                          @"/", NSHTTPCookieValue,
                          @".zhengtongauto.com", NSHTTPCookieDomain,//[url host], NSHTTPCookieDomain,//
                          @"/", NSHTTPCookiePath,//[url path], NSHTTPCookiePath,//
                          @"7200", NSHTTPCookieMaximumAge,
                          nil];
    NSHTTPCookie *cookie3 = [NSHTTPCookie cookieWithProperties:dic3];

    NSDictionary *dic4 = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"max-age", NSHTTPCookieName,
                          @"7200", NSHTTPCookieValue,
                          @".zhengtongauto.com", NSHTTPCookieDomain,//[url host], NSHTTPCookieDomain,//
                          @"/", NSHTTPCookiePath,//[url path], NSHTTPCookiePath,//
                          @"7200", NSHTTPCookieMaximumAge,
                          nil];
    NSHTTPCookie *cookie4 = [NSHTTPCookie cookieWithProperties:dic4];

    
    
    NSURL *url = [NSURL URLWithString:@"http://oadev.zhengtongauto.com:8010/Portal/InstanceSheetsSimple.html?IsMobile=true&InstanceId=d8ceb95a-20c6-402e-a91f-3f416d77a18f"];
    NSMutableURLRequest *request= [NSMutableURLRequest requestWithURL:url];
    NSArray *arrCookies = [NSArray arrayWithObjects:cookie1,cookie4,cookie2,cookie3, nil];
    NSDictionary *dictCookies = [NSHTTPCookie requestHeaderFieldsWithCookies:arrCookies];
    [request setValue:[dictCookies objectForKey:@"Cookie"] forHTTPHeaderField:@"Cookie"];
    
    [self.webView loadRequest:request];
}



@end
