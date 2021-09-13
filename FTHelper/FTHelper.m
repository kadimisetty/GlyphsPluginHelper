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
- (IBAction)myInput2ButtonAction:(id)sender {
}

- (IBAction)myInput1ButtonAction:(id)sender {
}
- (IBAction)f2ButtonAction:(id)sender {
}

- (IBAction)f1ButtonAction:(id)sender {
}

- (IBAction)myLabel2CopyButtonAction:(id)sender {
}

- (IBAction)myLabel1CopyButtonAction:(id)sender {
}
@end
