//
//  DeckTests.m
//  DeckTests
//
//  Created by Al Tyus on 6/9/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import <Expecta.h>
#import "FISDeck.h"

SpecBegin(FISDeck)

describe(@"FISDeck", ^{
    __block FISDeck *deck;
    
    beforeAll(^{

    });
    
    beforeEach(^{
        deck = [[FISDeck alloc] init];
    });
    
    describe(@"cards", ^{
        it(@"should have a cards instance method that returns an NSArray", ^{
            expect(deck).to.respondTo(@selector(cards));
            expect(deck.cards).to.beKindOf([NSArray class]);
            expect([deck.cards count]).to.equal(0);
        });
        pending(@"should be an array of cards");
    });
    
    describe(@"drawRandomCard", ^{
        it(@"should return an FISCard", ^{
            expect([deck drawRandomCard]).to.beKindOf([FISCard class]);
        });
        it(@"Should draw a random card", ^{
            pending(@"Testing Randomness is very very hard so these are just some lightweight tests");
            
            expect([deck drawRandomCard]).toNot.equal([deck drawRandomCard]);//expect drawinga  random card not to draw the same card twice in a row
        });
        it(@"Should remove the card from Cards after it's drawn", ^{
            FISCard *card = [deck drawRandomCard];
            
            expect(deck.cards).toNot.contain(card);
        });
    });
    
    describe(@"addCard:", ^{
        it(@"Should have an addCard Method", ^{
            expect(deck).to.respondTo(@selector(addCard:));
        });
        it(@"Should add a card to the cards array", ^{
            NSInteger cardsCount = [deck.cards count];
            
            [deck addCard:[[FISCard alloc] init]];
            
            expect(cardsCount + 1).to.equal([deck.cards count]);
        });
    });
});


SpecEnd