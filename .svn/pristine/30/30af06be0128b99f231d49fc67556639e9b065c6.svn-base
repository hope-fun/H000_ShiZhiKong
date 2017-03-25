//
//  ViewController.m
//  KPYXObject
//
//  Created by hoperun ccas on 13-3-19.
//  Copyright (c) 2013年 abing. All rights reserved.
//

#import "ViewController.h"
#import "zipZapManager.h"
@interface ViewController ()
{
    NSURL *homeUrl;
    NSURL *baseUrl;
    dispatch_queue_t upzip;
}
@end

@implementation ViewController
@synthesize buttomView;
@synthesize footView;
@synthesize gameWebView;
@synthesize buttonMenu;
@synthesize buttonHall;
@synthesize buttonPackge;
@synthesize buttonBack;
@synthesize buttonHome;
@synthesize buttonTask;
@synthesize buttonFight;
@synthesize buttonStrengthen;
@synthesize buttonEvolution;
- (void)viewDidLoad
{
    [super viewDidLoad];
    baseUrl = [NSURL URLWithString:@"http://10.20.70.203:9080/kpyx-logical-service"];
    homeUrl  = [NSURL URLWithString:@"http://10.20.70.203:9080/kpyx-logical-service/cg0101/cg010101/"];
    gameWebView.scalesPageToFit = YES;
    gameWebView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    upzip = dispatch_queue_create("com.zip",  NULL);
    dispatch_async(upzip, ^{
        NSString *zipString = @"/Users/hoperunccas/Desktop/imagetest.zip";
        [zipZapManager unzipWithPath:zipString ToPath:@"Images"];

    });
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;

}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ButtonAction
- (IBAction)buttonPressed:(id)sender
{
    UIButton *button = (UIButton *)sender;
    int buttonType = button.tag;
    switch (buttonType) {
        case buttonMenuType:
        {
//            homeUrl = [NSURL URLWithString:@"" relativeToURL:baseUrl];
//            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
//            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
//            [gameWebView reload];
        }
            break;
        case buttonHallType:
        {
            homeUrl = [NSURL URLWithString:@"http://www.baidu.com"];
//            homeUrl = [NSURL URLWithString:@"/cg0101/cg010102/index" relativeToURL:baseUrl];
            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        case buttonPackgeType:
        {
            homeUrl = [NSURL URLWithString:@"http://www.google.com"];

//            homeUrl = [NSURL URLWithString:@"/cg0801/cg080102/index" relativeToURL:baseUrl];
            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        case buttonBackType:
        {
            [gameWebView goBack];
//            homeUrl = [NSURL URLWithString:@"/cg0101/cg010102/index" relativeToURL:baseUrl];
//            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
//            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        case buttonHomeType:
        {
            homeUrl = [NSURL URLWithString:@"/cg0101/cg010103/index" relativeToURL:baseUrl];
            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        case buttonTaskType:
        {
            homeUrl = [NSURL URLWithString:@"/cg0201/cg020102/index" relativeToURL:baseUrl];
            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        case buttonFightType:
        {
            homeUrl = [NSURL URLWithString:@"/cg0401/cg040105/index" relativeToURL:baseUrl];
            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        case buttonStrengthenType:
        {
            homeUrl = [NSURL URLWithString:@"/cg0302/cg030201/index" relativeToURL:baseUrl];
            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        case buttonEvolutionType:
        {
            homeUrl = [NSURL URLWithString:@"/cg0302/cg030207/index" relativeToURL:baseUrl];
            [gameWebView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
            [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        }
            break;
        
            
        default:
            break;
    }
}

@end
