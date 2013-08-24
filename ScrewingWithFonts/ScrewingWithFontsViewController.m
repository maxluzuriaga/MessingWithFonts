//
//  ScrewingWithFontsViewController.m
//  ScrewingWithFonts
//
//  Created by Max Luzuriaga on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScrewingWithFontsViewController.h"

@implementation ScrewingWithFontsViewController
@synthesize textView;
@synthesize webView;
@synthesize labelView;
@synthesize scrollView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
    
    // See the ScrollViews test application for the code for mirroring scrolling on a UITableView sibling view.
    
    scrollView.delegate = self;
    scrollView.contentSize = CGSizeMake(320, 460);
    
    // Using UIWebView you can completely customize the rich text, but it is slower to load
    webView.delegate = self;
    [webView loadHTMLString:@"<style> * { margin: 0; padding: 0; font-weight: normal; } p { font-size: 20px; color: #9c9c9c; text-shadow: 0px -1px 0 #000; font-family: Wisdom Script AI, Helvetica, sans-serif; line-height: 1.35em; padding-left: 15px; } </style><p>Tap either button to add a Card to this Stack</p>" baseURL:nil];
    
    // Using UITextView, you cannot add a text shadow, or more importantly customize the leading, but it is faster to load and you have to reverse the default inset
    [textView setFont:[UIFont fontWithName:@"Wisdom Script AI" size:20]];
    textView.contentInset = UIEdgeInsetsMake(-7, -5, 0, -5);
    
    // Using UILabel you can add a text shadow, it is faster to load, you don't have to specifify an inset, but there is no support for leading
    [labelView setFont:[UIFont fontWithName:@"Wisdom Script AI" size:20]];;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"finished load");
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint contentOffset = self.scrollView.contentOffset;
    NSLog(@"%f, %f", contentOffset.x, contentOffset.y);
}

- (void)viewDidUnload
{
    [self setTextView:nil];
    [self setWebView:nil];
    [self setLabelView:nil];
    [self setScrollView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
