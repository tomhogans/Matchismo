//
//  Deck.h
//  Matchismo
//
//  Created by Tom Hogans on 12/31/13.
//  Copyright (c) 2013 Tom Hogans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
