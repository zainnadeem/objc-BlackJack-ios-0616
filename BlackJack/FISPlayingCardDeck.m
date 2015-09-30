//  FISPlayingCardDeck.m

#import "FISPlayingCardDeck.h"
#import "FISPlayingCard.h"

@implementation FISPlayingCardDeck

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _remainingCards = [[NSMutableArray alloc] init];
        _dealtCards = [[NSMutableArray alloc] init];
        [self generateCards];
    }
    return self;
}

- (void)generateCards {
    NSArray *validSuits = [FISPlayingCard validSuits];
    NSArray *validRanks = [FISPlayingCard validRanks];
    
    for (NSString *suit in validSuits) {
        for (NSString *rank in validRanks) {
            FISPlayingCard *newCard = [[FISPlayingCard alloc] initWithSuit:suit rank:rank];
            [self.remainingCards addObject:newCard];
        }
    }
    NSLog(@"Generated new cards, count: %lu", self.remainingCards.count);
}

- (FISPlayingCard *)drawFirstCard {
    
    if (self.remainingCards.count == 0) {
        NSLog(@"You cannot draw from an empty deck.");
        return nil;
    }
    
    FISPlayingCard *drawnCard = self.remainingCards[0];
    [self.dealtCards addObject:drawnCard];
    [self.remainingCards removeObjectAtIndex:0];
    
    return drawnCard;
}

- (void)resetDeck {
    NSLog(@"reset deck");
    [self gatherDealtCards];
    [self shuffleRemainingCards];
}

- (void)gatherDealtCards {
    NSLog(@"gather dealt cards");
    [self.remainingCards addObjectsFromArray:self.dealtCards];
    [self.dealtCards removeAllObjects];
}

- (void)shuffleRemainingCards {
    NSLog(@"shuffle remaining cards");
    NSMutableArray *cardsCopy = [self.remainingCards mutableCopy];
    [self.remainingCards removeAllObjects];
    
    NSUInteger total = cardsCopy.count;
    
    for (NSUInteger i = 0; i < total; i++) {
        NSUInteger cardsCount = cardsCopy.count;
        NSUInteger randomIndex = arc4random_uniform((unsigned int)cardsCount);
        
        FISPlayingCard *randomCard = cardsCopy[randomIndex];
        [self.remainingCards addObject:randomCard];
    }
}

- (NSString *)description {
    NSMutableString *result = [[NSMutableString alloc] init];
    
    [result appendFormat:@"\ncount: %lu", self.remainingCards.count];
    
    [result appendString:@"\ncards:"];
    for (FISPlayingCard *card in self.remainingCards) {
        [result appendFormat:@"\n    %@", card.description];
    }
    
    return [result copy];
}


@end
