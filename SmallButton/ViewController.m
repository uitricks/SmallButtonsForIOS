//
//  ViewController.m
//  SmallButton
//
//  Created by Brian Bal on 9/18/12.
//  Copyright (c) 2012 UITricks. All rights reserved.
//

#import "ViewController.h"
#import "SmallButton.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize smallButton;
@synthesize button;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)smallButtonPressed:(id)sender
{
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Small Button Pressed"
                                                 message:@"That was easy, you touched the button with the larger tap zone."
                                                delegate:nil
                                       cancelButtonTitle:@"OK"
                                       otherButtonTitles: nil];
    [av show];
}

- (IBAction)buttonPressed:(id)sender
{
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Button Pressed"
                                                 message:@"Good hand eye cordination you managed to touch the small button without the larger tap area"
                                                delegate:nil
                                       cancelButtonTitle:@"OK"
                                       otherButtonTitles: nil];
    [av show];
}

@end
