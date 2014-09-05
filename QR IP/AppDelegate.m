//
//  AppDelegate.m
//  QR IP
//
//  Created by Michael Feldstein on 9/5/14.
//  Copyright (c) 2014 ExtraStrength. All rights reserved.
//

#import "AppDelegate.h"
#import "QRCodeGenerator.h"
@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.ipAddress = [self getIPAddress];
    [self updateQRCode];
    self.qrTextField.stringValue = self.ipAddress;
    self.qrTextField.delegate = self;
}

- (void)controlTextDidChange:(NSNotification *)obj {
    NSLog(@"Change");
    self.ipAddress = self.qrTextField.stringValue;
    [self updateQRCode];
}

- (void) updateQRCode {
    
    self.qrCodeImage.image = [QRCodeGenerator qrImageForString:self.ipAddress imageSize:self.qrCodeImage.bounds.size.width];
}
-(NSString *)getIPAddress
{
    for (NSString* address in [[NSHost currentHost] addresses]) {
        if ([address componentsSeparatedByString:@"."].count == 4) {
            if (![address isEqualToString:@"127.0.0.1"]) {
                return address;
            }
        }
    }
    return nil;
}

@end
