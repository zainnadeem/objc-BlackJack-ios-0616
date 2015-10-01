//  FISCardDeck.m

#import "FISCardDeck.h"
#import "FISCard.h"

@implementation FISCardDeck

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        _remainingCards = [[NSMutableArray alloc] init];
        _dealtCards = [[NSMutableArray alloc] init];
        [self generateCards];
    }
    
    return self;
}

- (void)generateCards {
    NSArray *validSuits = [FISCard validSuits];
    NSArray *validRanks = [FISCard validRanks];
    
    for (NSString *suit in validSuits) {
        for (NSString *rank in validRanks) {
            FISCard *card = [[FISCard alloc] initWithSuit:suit rank:rank];
            [self.remainingCards addObject:card];
        }
    }
    NSLog(@"Generated new cards, count: %lu", self.remainingCards.count);
}

- (FISCard *)drawNextCard {
    
    if (self.remainingCards.count == 0) {
        NSLog(@"You cannot draw from an empty deck.");
        return nil;
    }
    
    FISCard *drawnCard = self.remainingCards[0];
    [self.dealtCards addObject:drawnCard];
    [self.remainingCards removeObjectAtIndex:0];
    
    return drawnCard;
}

- (void)resetDeck {
    [self gatherDealtCards];
    [self shuffleRemainingCards];
}

- (void)gatherDealtCards {
    [self.remainingCards addObjectsFromArray:self.dealtCards];
    [self.dealtCards removeAllObjects];
}

- (void)shuffleRemainingCards {
    NSMutableArray *cardsCopy = [self.remainingCards mutableCopy];
    [self.remainingCards removeAllObjects];
    
    NSUInteger total = cardsCopy.count;
    
    for (NSUInteger i = 0; i < total; i++) {
        NSUInteger cardsCount = cardsCopy.count;
        NSUInteger randomIndex = arc4random_uniform((unsigned int)cardsCount);
        
        FISCard *randomCard = cardsCopy[randomIndex];
        [cardsCopy removeObjectAtIndex:randomIndex];
        [self.remainingCards addObject:randomCard];
    }
}

- (NSString *)description {
    NSMutableString *result = [[NSMutableString alloc] init];
    
    [result appendFormat:@"\ncount: %lu", self.remainingCards.count];
    
    [result appendString:@"\ncards:"];
    for (FISCard *card in self.remainingCards) {
        [result appendFormat:@"\n    %@", card.description];
    }
    
    return result;
}


@end
