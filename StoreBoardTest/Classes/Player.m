//
//  Player.m
//  StoreBoardTest
//
//  Created by handy on 2/7/14.
//  Copyright (c) 2014 handy. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)dealloc {
    self.name = nil;
    self.game = nil;
    [super dealloc];
}
@end