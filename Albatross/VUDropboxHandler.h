//
//  VUDropboxHandler.h
//  Albatross
//
//  Created by Boris Bügling on 05.12.11.
//  Copyright (c) 2011 Extessy AG. All rights reserved.
//

#import <DropboxSDK/DropboxSDK.h>
#import <Foundation/Foundation.h>

@interface VUDropboxHandler : NSObject <DBSessionDelegate>

+(BOOL)handleURL:(NSURL*)url;

-(void)link;

@end
