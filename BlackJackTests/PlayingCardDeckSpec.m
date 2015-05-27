//
//  PlayingCardDeck.m
//  BlackJack
//
//  Created by Al Tyus on 6/9/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import <Expecta.h>
#import "FISPlayingCardDeck.h"
#import "FISPlayingCard.h"

SpecBegin(FISPlayingCardDeck)

describe(@"FISPlayingCardDeck", ^{
    
    __block FISPlayingCardDeck *deck;
    beforeAll(^{
        
    });
    
    beforeEach(^{
        deck = [[FISPlayingCardDeck alloc] init];
    });
    
    describe(@"cards", ^{
        it(@"should have a cards instance method that returns an NSMutableArray", ^{
            expect(deck).to.respondTo(@selector(cards));
            expect(deck.cards).to.beKindOf([NSMutableArray class]);
        });
        pending(@"should be an array of cards");
    });
    
    describe(@"init", ^{
        it(@"Should initialize the cards array with 52 cards", ^{
            expect([deck.cards count]).to.equal(52);
            for(FISPlayingCard *card in deck.cards)
            {
                expect(card).to.beKindOf([FISPlayingCard class]);
            }
        });
        it(@"Should initialize the cards array with 52 unique cards", ^{
            NSCountedSet *countedCards = [NSCountedSet setWithArray:deck.cards];
            
            NSInteger heartsCount = 0;
            NSInteger clubsCount = 0;
            NSInteger spadesCount = 0;
            NSInteger diamondsCount = 0;
            
            for (FISPlayingCard *card in deck.cards)
            {
                expect([countedCards countForObject:card]).to.equal(1);
                
                if ([card.suit isEqualToString:@"♠"]){spadesCount++;}
                if ([card.suit isEqualToString:@"♥"]){heartsCount++;}
                if ([card.suit isEqualToString:@"♣"]){clubsCount++;}
                if ([card.suit isEqualToString:@"♦"]){diamondsCount++;}
                
            }
            expect(heartsCount).to.equal(13);
            expect(clubsCount).to.equal(13);
            expect(spadesCount).to.equal(13);
            expect(diamondsCount).to.equal(13);
        });
    });
    
    describe(@"drawRandomCard", ^{
        
        it(@"should return an FISPlayingCard", ^{
            expect([deck drawRandomCard]).to.beKindOf([FISPlayingCard class]);
        });
        
        it(@"Should draw a random card", ^{
            pending(@"Testing Randomness is very very hard so these are just some lightweight");
            expect([deck drawRandomCard]).toNot.equal([deck drawRandomCard]);
            // expects drawRandomCard not to draw the same card twice in a row
        });
        
        it(@"Should remove the card from Cards after it's drawn", ^{
            FISPlayingCard *card = [deck drawRandomCard];
            
            expect(deck.cards).toNot.contain(card);
        });
    });
    
});


SpecEnd