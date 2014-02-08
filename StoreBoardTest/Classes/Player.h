//
//  Player.h
//  StoreBoardTest
//
//  Created by handy on 2/7/14.
//  Copyright (c) 2014 handy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *game;
@property (nonatomic, assign) int rating;

@end