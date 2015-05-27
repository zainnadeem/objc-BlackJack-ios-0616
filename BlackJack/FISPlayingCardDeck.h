//
//  FISPlayingCardDeck.h
//  BlackJack
//
//  Created by Al Tyus on 6/11/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISPlayingCard.h"

@interface FISPlayingCardDeck : NSObject

@property (nonatomic, getter = isFaceUp)BOOL faceUp;
@property (strong, nonatomic) NSMutableArray * cards;

- (FISPlayingCard *)drawRandomCard;
- (void)addCard:(FISPlayingCard *)card;
- (instancetype)init; // Playing Card Deck's init method should create an unshuffled deck of all 52 playing cards and initialize the cards mutable array with the 52 cards.

@end
