//
//  VUMasterViewController.h
//  Albatross
//
//  Created by Boris Bügling on 05.12.11.
//  Copyright (c) 2011 Extessy AG. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VUDropboxHandler;

@interface VUMasterViewController : UITableViewController

@property (nonatomic, strong) VUDropboxHandler* dropboxHandler;

@end
