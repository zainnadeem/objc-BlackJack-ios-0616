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
        NSLog(@"The deck is empty.");
        return nil;
    }
    
    FISPlayingCard *firstCard = self.remainingCards[0];
    [self.remainingCards removeObjectAtIndex:0];
    
    return firstCard;
}

- (void)shuffleRemainingCards {
    
}


- (void)addCard:(FISPlayingCard *)card
{
 //   [self.cards addObject:card];
}
//
//if (self.cards.count)
//{
//    int index = arc4random() % self.cards.count;
//    randomCard = self.cards[index];
//    [self.cards removeObjectAtIndex:index];
//}

@end
