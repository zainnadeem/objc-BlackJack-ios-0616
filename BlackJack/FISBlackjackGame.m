//
//  FISBlackjackGame.m
//  BlackJack
//
//  Created by Zain Nadeem on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "FISBlackjackGame.h"
#import "FISCardDeck.h"
#import "FISBlackjackPlayer.h"


@implementation FISBlackjackGame



-(instancetype)init{
     self = [super init];
    
    if (self){
        _deck = [[FISCardDeck alloc]init];
        _house = [[FISBlackjackPlayer alloc]initWithName:@"House"];
        _player = [[FISBlackjackPlayer alloc]initWithName:@"Player"];
    }
        return self;
}
-(void)playBlackjack{
    [self.deck resetDeck];
    [self.house resetForNewGame];
    [self.player resetForNewGame];
    [self dealNewRound];
    
    for (NSUInteger i = 0; i < 3; i++) {
        [self processPlayerTurn];
        if (self.player.busted) {
            break;
        }
        
        [self processHouseTurn];
        if (self.house.busted) {
            break;
        }
    }

}

-(void)dealNewRound{
    for (NSUInteger i = 1; i < 3; i++){
    if ([self.player.cardsInHand count] < i){
        [self dealCardToPlayer];
    }
    if ([self.house.cardsInHand count] < i){
        [self dealCardToHouse];
    }
    }
}
-(void)dealCardToPlayer{
    FISCard *newCard = [self.deck drawNextCard];
    [self.player acceptCard:newCard];
    
}
-(void)dealCardToHouse{
    FISCard *newCard = [self.deck drawNextCard];
    [self.house acceptCard:newCard];
}
-(void)processPlayerTurn{
    if((self.player.shouldHit == YES) && (self.player.busted == NO) && (self.player.stayed == NO)){
        [self dealCardToPlayer];
    }
}
-(void)processHouseTurn{
    if((self.house.shouldHit == YES) && (self.house.busted == NO) && (self.house.stayed == NO)){
        [self dealCardToHouse];
    }
}
-(BOOL)houseWins{
    if(self.house.busted){
        return NO;
    }else if((self.house.handscore > self.player.handscore && self.house.handscore <= 21) || (self.player.busted)){
    return YES;
    }else if ((self.house.blackjack) && (self.player.blackjack)){
        return NO;
    }else if (self.house.handscore == self.player.handscore){
        return YES;
    }else{
        return NO;
    }
}
-(void)incrementWinsAndLossesForHouseWins:(BOOL)houseWins{
    if (houseWins){
        self.house.wins +=1;
        self.player.losses +=1;
        NSLog(@"HOUSE WINS! Sorry!");
    }else{
        self.house.losses +=1;
        self.player.wins +=1;
        NSLog(@"YOU WIN!!");
    }

}

@end
