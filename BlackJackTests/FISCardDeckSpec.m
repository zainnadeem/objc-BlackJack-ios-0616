//  FISCardDeckSpec.m

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "FISCardDeck.h"
#import "FISCard.h"

SpecBegin(FISCardDeck)

describe(@"FISCardDeck", ^{
    
    __block FISCardDeck *cardDeck;
    
    __block FISCard *testCard;
    
    beforeEach(^{
        cardDeck = [[FISCardDeck alloc] init];
        
        testCard = [[FISCard alloc] init];
    });
    
    describe(@"default initializer", ^{
        it(@"should initialize the remainingCards property to a mutable array that can receive a test object", ^{
            [cardDeck.remainingCards addObject:testCard];
            
            expect(cardDeck.remainingCards.lastObject).to.equal(testCard);
        });
        
        it(@"should initialize the dealtCards property to a mutable array that can receive a test object", ^{
            [cardDeck.dealtCards addObject:testCard];
            
            expect(cardDeck.dealtCards.lastObject).to.equal(testCard);
        });
        
        it(@"should initialize the remainingCards array with 52 cards", ^{
            expect(cardDeck.remainingCards.count).to.equal(52);
        });
        
        it(@"should initialize the remainingCards array with 52 unique cards", ^{
            NSMutableSet *cardLabels = [[NSMutableSet alloc] init];
            for (FISCard *card in cardDeck.remainingCards) {
                [cardLabels addObject:card.cardLabel];
            }
            
            expect(cardLabels.count).to.equal(52);
        });
        
        it(@"should initialize the dealtCards array with no cards", ^{
            expect(cardDeck.dealtCards.count).to.equal(0);
        });
    });

    describe(@"drawNextCard", ^{
        it(@"should reduce the count of remainingCards to 51 when called once", ^{
            [cardDeck drawNextCard];
            
            expect(cardDeck.remainingCards.count).to.equal(51);
        });
        
        it(@"should reduce the count of remainingCards to 49 when called thrice", ^{
            [cardDeck drawNextCard];
            [cardDeck drawNextCard];
            [cardDeck drawNextCard];
            
            expect(cardDeck.remainingCards.count).to.equal(49);
        });
        
        it(@"should draw three unique cards when called thrice", ^{
            FISCard *card0 = [cardDeck drawNextCard];
            FISCard *card1 = [cardDeck drawNextCard];
            FISCard *card2 = [cardDeck drawNextCard];
            
            expect(card0.cardLabel).toNot.equal(card1.cardLabel);
            expect(card0.cardLabel).toNot.equal(card2.cardLabel);
            expect(card1.cardLabel).toNot.equal(card2.cardLabel);
        });
        
        it(@"should increase the count of dealtCards to 1 when called once", ^{
            [cardDeck drawNextCard];
            
            expect(cardDeck.dealtCards.count).to.equal(1);
        });

        it(@"should increase the count of dealtCards to 3 when called thrice", ^{
            [cardDeck drawNextCard];
            [cardDeck drawNextCard];
            [cardDeck drawNextCard];
            
            expect(cardDeck.dealtCards.count).to.equal(3);
        });
        
        it(@"should insert the drawn card into the dealtCards array", ^{
            FISCard *card = [cardDeck drawNextCard];
            
            expect(cardDeck.dealtCards).to.contain(card);
        });
        
        it(@"should insert three unique cards into the dealtCards array when called thrice", ^{
            [cardDeck drawNextCard];
            [cardDeck drawNextCard];
            [cardDeck drawNextCard];
            
            NSSet *dealtCardsSet = [NSSet setWithArray:cardDeck.dealtCards];
            
            expect(dealtCardsSet.count).to.equal(3);
        });
    });

    describe(@"resetDeck", ^{
        it(@"", ^{
            
        });
    });
    
    __block FISCardDeck *gatheringCardDeck;
    
    beforeEach(^{
        
        gatheringCardDeck = [[FISCardDeck alloc] init];
        
        for (NSUInteger i = 0; i < 52; i++) {
            [gatheringCardDeck drawNextCard];
        }
        
        describe(@"gatherDealtCards", ^{
            it(@"should add the dealtCards back into the remainingCards array", ^{
                expect(cardDeck.remainingCards.count).to.equal(52);
            });
            
            it(@"should empty the dealtCards array", ^{
                expect(cardDeck.dealtCards.count).to.equal(0);
            });
            
            it(@"should return nil if the remainingCards array is empty", ^{
                FISCard *fiftyThirdCard = [gatheringCardDeck drawNextCard];
                
                expect(fiftyThirdCard).to.beNil();
            });
        });
    });

    describe(@"shuffleRemainingCards", ^{
        it(@"", ^{
            
        });
    });
    
    describe(@"description property", ^{
        it(@"", ^{
            
        });
    });
});

SpecEnd
