//
//  ViewController.m
//  TestBarcode
//
//  Created by bobo on 12-7-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "NKDCode128Barcode.h"
#import "UIImage-NKDBarcode.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize barcodeImageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NKDCode128Barcode *barcode = [[NKDCode128Barcode alloc] initWithContent:@"2222"];
    UIImage *image = [UIImage imageFromBarcode:barcode];
    self.barcodeImageView.image = image;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBarcodeImageView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [barcodeImageView release];
    [super dealloc];
}
@end
