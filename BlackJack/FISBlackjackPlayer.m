//
//  FISBlackjackPlayer.m
//  BlackJack
//
//  Created by Zain Nadeem on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "FISBlackjackPlayer.h"


@implementation FISBlackjackPlayer


-(instancetype)init{
    self = [self initWithName:@""];
    return self;
}

-(instancetype)initWithName:(NSString*)name{
    self = [super init];
    if (self){
        _name = name;
        _cardsInHand = [NSMutableArray new];
        _busted = NO;
        _blackjack = NO;
        _stayed = NO;
        _handscore = 0;
        _wins = 0;
        _losses = 0;
        
    }
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"name: %@ \n cards: %@ \n handscore  : %li \n ace in hand: %d \n stayed: %d \n blackjack: %d \n busted: %d wins: %lu \n losses: %lu", _name, _cardsInHand, _handscore, _aceInHand, _stayed, _blackjack, _busted, (unsigned long)_wins, (unsigned long)_losses];
}

-(void)resetForNewGame{
    [_cardsInHand removeAllObjects];
    _handscore = 0;
    _busted = NO;
    _blackjack = NO;
    _stayed = NO;
    _aceInHand = NO;
    
}
-(void)acceptCard:(FISCard *)card{
    [_cardsInHand addObject:card];
    _handscore = 0;
    for (FISCard *card in _cardsInHand)
    {
        _handscore += card.cardValue;
    }
    NSMutableArray *acesInHand = [[NSMutableArray alloc] init];
    NSPredicate *lookingForAces = [NSPredicate predicateWithFormat:@"cardLabel CONTAINS 'A'"];
    NSArray *aces = [_cardsInHand filteredArrayUsingPredicate:lookingForAces];
    for(FISCard *card in aces){
        if ([_cardsInHand containsObject:card]){
            [acesInHand addObject:card];
            _aceInHand = YES;
        }
    }
    if(_handscore <= 11 && acesInHand.count > 0){
        _handscore += 10;
    }
    if(_handscore == 21){
        _blackjack = YES;
    }
    if(_handscore > 21){
        _busted = YES;
    }
}
-(BOOL)shouldHit{
    if(_handscore > 16){
        _stayed = YES;
        return NO;
    }else{
        return YES;
    }
}

@end
