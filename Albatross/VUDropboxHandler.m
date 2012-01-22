//
//  VUDropboxHandler.m
//  Albatross
//
//  Created by Boris Bügling on 05.12.11.
//  Copyright (c) 2011 Extessy AG. All rights reserved.
//

#import "VUDropboxHandler.h"

static NSString* kDropboxAPIKey      = @"<<<API Key>>>";
static NSString* kDropboxAPISecret   = @"<<<API Secret>>>";

@implementation VUDropboxHandler

+(BOOL)handleURL:(NSURL*)url {
    if ([[DBSession sharedSession] handleOpenURL:url]) {
        if ([[DBSession sharedSession] isLinked]) {
            NSLog(@"App linked successfully!");
        }
        return YES;
    }
    return NO;
}

-(id)init {
    self = [super init];
    if (self) {
        DBSession* session = [[DBSession alloc] initWithAppKey:kDropboxAPIKey appSecret:kDropboxAPISecret root:kDBRootAppFolder];
        session.delegate = self;
        [DBSession setSharedSession:session];
    }
    return self;
}

-(void)link {
    if (![[DBSession sharedSession] isLinked]) {
        [[DBSession sharedSession] link];
    }
}

#pragma mark -
#pragma mark DBSessionDelegate methods

- (void)sessionDidReceiveAuthorizationFailure:(DBSession*)session userId:(NSString *)userId {
    NSLog(@"Dropbox session for %@ ended.", userId);
}

@end
