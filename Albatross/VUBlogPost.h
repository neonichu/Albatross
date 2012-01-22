//
//  VUBlogPost.h
//  Albatross
//
//  Created by Boris Bügling on 05.12.11.
//  Copyright (c) 2011 Extessy AG. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    VUBlogPostStatusDraft,
    VUBlogPostStatusFinal,
    VUBlogPostStatusPublished,
} VUBlogPostStatus;

#pragma mark -

@interface VUBlogPost : NSObject

@property (nonatomic, strong) NSDate* date;
@property (nonatomic, strong) NSString* slug;
@property (nonatomic, strong) NSString* text;
@property (nonatomic, strong) NSString* title;

@end
