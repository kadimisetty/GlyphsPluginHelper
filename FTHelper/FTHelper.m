//
//  FTHelper.m
//  FTHelper
//
//  Created by Sri Krishna Kadimisetty on 9/13/21.
//
//

#import "FTHelper.h"

@implementation FTHelper

@synthesize windowController;

// MARK: GLYPHS

- (id) init {
	self = [super initWithNibName:@"FTHelperView" bundle:[NSBundle bundleForClass:[self class]]];
	return self;
}

- (NSUInteger)interfaceVersion {
	// Distinguishes the API verison the plugin was built for. Return 1.
	return 1;
}

- (NSString *)title {
	// Return the name of the tool as it will appear in the menu.
	return @"FT Helper";
}

- (NSInteger)maxHeight {
	return 265;
}

- (NSInteger)minHeight {
	return 125;
}

- (NSUInteger)currentHeight {
	return [[NSUserDefaults standardUserDefaults] integerForKey:@"FTHelperCurrentHeight"];
}

- (void)setCurrentHeight:(NSUInteger)newHeight {
	if (newHeight >= [self minHeight] && newHeight <= [self maxHeight]) {
		[[NSUserDefaults standardUserDefaults] setInteger:newHeight forKey:@"FTHelperCurrentHeight"];
	}
}

- (NSView *)theView {
	return [self view];
}

// MARK: HELPERS

+ (void) copyStringToClipboard:(NSString*) stringToCopy {
	[[NSPasteboard generalPasteboard] clearContents];
	[[NSPasteboard generalPasteboard]
	 setString:stringToCopy
	 forType:NSPasteboardTypeString];
}

- (NSViewController <GSGlyphEditViewControllerProtocol> *)myActiveEditViewController {
	NSWindowController <GSWindowControllerProtocol>* wc =
		(NSWindowController <GSWindowControllerProtocol>*) self.windowController;

	return wc.activeEditViewController;
}

// MARK: COPY ACTIONS

- (IBAction)myLabel2CopyButtonAction:(id)sender {
	[FTHelper copyStringToClipboard:self.myLabel2.stringValue];
}


- (IBAction)myLabel1CopyButtonAction:(id)sender {
	[FTHelper copyStringToClipboard:self.myLabel1.stringValue];
}

// MARK: INPUT BUTTON ACTIONS

- (IBAction)myInput1ButtonAction:(id)sender {
}


- (IBAction)myInput2ButtonAction:(id)sender {
}

// MARK: F1, F2 BUTTON ACTIONS

- (IBAction)myF1ButtonAction:(id)sender {
}

- (IBAction)myF2ButtonAction:(id)sender {
}

@end
