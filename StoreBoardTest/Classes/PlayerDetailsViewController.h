//
//  PlayerDetailsViewController.h
//  StoreBoardTest
//
//  Created by handy on 2/8/14.
//  Copyright (c) 2014 handy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "GamePickerViewController.h"

@class PlayerDetailsViewController;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:
(PlayerDetailsViewController *)controller
                       didAddPlayer:(Player *)player;
@end

@interface PlayerDetailsViewController : UITableViewController<GamePickerViewControllerDelegate>

@property (nonatomic, assign) id <PlayerDetailsViewControllerDelegate> delegate;
@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UILabel *detailLabel;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
