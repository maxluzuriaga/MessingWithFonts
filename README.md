ScrewingWithFonts
=================

A test of 3 different ways of displaying custom fonts on iOS: UIWebView, UITextView, and UILabel.

With UIWebView, you can completely customize the text, using any property available in CSS. The downside of this method is that it is slow to load.

With a UITextView, you can specify a custom font and it is lighting-fast to load, but you cannot add a text shadow or customize the leading of the text.

With a UILabel, you can specify a custom font, custom text shadow, it is faster to load, but you cannot specify the text leading.

Ultimately, all three of these methods are made obsolete with the introduction of CoreText in iOS 7, but it's interesting to keep these tests here for posterity.
