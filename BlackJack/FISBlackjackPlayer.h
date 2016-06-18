//
//  FISBlackjackPlayer.h
//  BlackJack
//
//  Created by Zain Nadeem on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISCardDeck.h"


@interface FISBlackjackPlayer : NSObject
@property (strong, nonatomic, readwrite) NSString *name;
@property (strong, nonatomic, readwrite) NSMutableArray *cardsInHand;
@property (nonatomic, readwrite) BOOL aceInHand;
@property (nonatomic, readwrite) BOOL blackjack;
@property (nonatomic, readwrite) BOOL busted;
@property (nonatomic, readwrite) BOOL stayed;
@property (nonatomic, readwrite) NSUInteger handscore;
@property (nonatomic, readwrite) NSUInteger wins;
@property (nonatomic, readwrite) NSUInteger losses;

-(instancetype)init;
-(instancetype)initWithName:(NSString*)name;
-(void)resetForNewGame;
-(void)acceptCard:(FISCard *)card;
-(BOOL)shouldHit;






@end
