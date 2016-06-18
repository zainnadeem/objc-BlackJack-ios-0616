//
//  FISBlackjackGame.h
//  BlackJack
//
//  Created by Zain Nadeem on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISBlackjackPlayer.h"
#import "FISCardDeck.h"

@interface FISBlackjackGame : NSObject

@property (strong, nonatomic, readwrite)FISCardDeck *deck;
@property (strong, nonatomic, readwrite) FISBlackjackPlayer *house;
@property (strong, nonatomic, readwrite) FISBlackjackPlayer *player;

-(instancetype)initWithCardDeck:(FISCardDeck *)deck House:(FISBlackjackPlayer *)house Player:(FISBlackjackPlayer*)player;
-(void)playBlackjack;
-(void)dealNewRound;
-(void)dealCardToPlayer;
-(void)dealCardToHouse;
-(void)processPlayerTurn;
-(void)processHouseTurn;
-(BOOL)houseWins;
-(void)incrementWinsAndLossesForHouseWins:(BOOL)houseWins;



@end
