//
//  GamePickerViewController.h
//  StoreBoardTest
//
//  Created by handy on 2/8/14.
//  Copyright (c) 2014 handy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>
- (void)gamePickerViewController:
(GamePickerViewController *)controller
                   didSelectGame:(NSString *)game;
@end

@interface GamePickerViewController : UITableViewController
@property (nonatomic, assign) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic, retain) NSString *game;
@end
