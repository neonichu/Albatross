//
//  VUAppDelegate.m
//  Albatross
//
//  Created by Boris Bügling on 05.12.11.
//  Copyright (c) 2011 Extessy AG. All rights reserved.
//

#import "VUAppDelegate.h"
#import "VUDropboxHandler.h"

@implementation VUAppDelegate

@synthesize window;
							
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    if ([VUDropboxHandler handleURL:url]) {
        return YES;
    }
    return NO;
}


@end
