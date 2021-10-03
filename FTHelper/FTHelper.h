//
//  FTHelper.h
//  FTHelper
//
//  Created by Sri Krishna Kadimisetty on 9/13/21.
//
//

#import <Cocoa/Cocoa.h>
#import <GlyphsCore/GlyphsPaletteProtocol.h>

@interface FTHelper : NSViewController <GlyphsPalette>

// INPUT TEXTFIELDS
@property (weak) IBOutlet NSTextField *myInput1TextField;
@property (weak) IBOutlet NSTextField *myInput2TextField;
- (IBAction)myInput1ButtonAction:(id)sender;
- (IBAction)myInput2ButtonAction:(id)sender;

// LABELS
@property (weak) IBOutlet NSTextField *myLabel1;
@property (weak) IBOutlet NSTextField *myLabel2;
- (IBAction)myLabel1CopyButtonAction:(id)sender;
- (IBAction)myLabel2CopyButtonAction:(id)sender;
- (IBAction)myLabel1ButtonAction:(id)sender;
- (IBAction)myLabel2ButtonAction:(id)sender;

// F1, F2, F3 BUTTONS

@property (weak) IBOutlet NSButton *myF1Button;
@property (weak) IBOutlet NSButton *myF2Button;
@property (weak) IBOutlet NSButton *myF3Button;

- (IBAction)myF1ButtonAction:(id)sender;
- (IBAction)myF2ButtonAction:(id)sender;
- (IBAction)myF3ButtonAction:(id)sender;

@end
