//
//  AppDelegate.h
//  QR IP
//
//  Created by Michael Feldstein on 9/5/14.
//  Copyright (c) 2014 ExtraStrength. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTextFieldDelegate>

@property NSString* ipAddress;
@property (assign) IBOutlet NSImageView* qrCodeImage;
@property (assign) IBOutlet NSTextField* qrTextField;
@property (assign) IBOutlet NSWindow *window;

@end
