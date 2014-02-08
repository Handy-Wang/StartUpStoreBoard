//
//  PlayerDetailsViewController.m
//  StoreBoardTest
//
//  Created by handy on 2/8/14.
//  Copyright (c) 2014 handy. All rights reserved.
//

#import "PlayerDetailsViewController.h"

@interface PlayerDetailsViewController ()
@property (nonatomic, retain)NSString *game;
@end

@implementation PlayerDetailsViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
	if ((self = [super initWithCoder:aDecoder]))
	{
		NSLog(@"init PlayerDetailsViewController");
        self.game = @"Chess";
	}
	return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"PickGame"])
	{
		GamePickerViewController *gamePickerViewController =
        segue.destinationViewController;
		gamePickerViewController.delegate = self;
		gamePickerViewController.game = self.game;
	}
}

#pragma mark - GamePickerViewControllerDelegate

- (void)gamePickerViewController:
(GamePickerViewController *)controller
                   didSelectGame:(NSString *)theGame
{
	self.game = theGame;
	self.detailLabel.text = self.game;
	[self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.detailLabel.text = self.game;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender
{
	[self.delegate playerDetailsViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender
{
	NSString *name = self.nameTextField.text;
    if (name.length <= 0) {
        return;
    }
    
    Player *player = [[Player alloc] init];
	player.name = name;
	player.game = self.game;
	player.rating = 1;
	[self.delegate playerDetailsViewController:self didAddPlayer:player];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	if (indexPath.section == 0)
		[self.nameTextField resignFirstResponder];
}

- (void)dealloc {
    NSLog(@"dealloc PlayerDetailsViewController");
    [_nameTextField release];
    self.game = nil;
    [_detailLabel release];
    [super dealloc];
}
@end
