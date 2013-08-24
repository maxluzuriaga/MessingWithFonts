//
//  ScrewingWithFontsViewController.h
//  ScrewingWithFonts
//
//  Created by Max Luzuriaga on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrewingWithFontsViewController : UIViewController <UIWebViewDelegate, UIScrollViewDelegate> {
    UITextView *textView;
    UIWebView *webView;
    UILabel *labelView;
    UIScrollView *scrollView;
}

@property (nonatomic, strong) IBOutlet UITextView *textView;
@property (nonatomic, strong) IBOutlet UIWebView *webView;
@property (nonatomic, strong) IBOutlet UILabel *labelView;
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;

@end
