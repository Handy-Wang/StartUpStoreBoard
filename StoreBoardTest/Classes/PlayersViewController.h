//
//  PlayersViewController.h
//  StoreBoardTest
//
//  Created by handy on 2/7/14.
//  Copyright (c) 2014 handy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController<PlayerDetailsViewControllerDelegate>

@property (nonatomic, retain) NSMutableArray *players;

@end