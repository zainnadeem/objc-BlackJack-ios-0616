//  FISBlackjackGame.m

#import "FISBlackjackGame.h"
#import "FISPlayingCard.h"

@implementation FISBlackjackGame

- (instancetype)init {
    self = [super init];
    if (self) {
        _playingCardDeck = [[FISPlayingCardDeck alloc] init];
        _hand = [[NSMutableArray alloc] init];
        _handScore = 0;
    }
    
    return self;
}

- (void)deal {
//    self.playingCardDeck = [[FISPlayingCardDeck alloc] init];
//    self.hand = [[NSMutableArray alloc] init];
//    self.handScore = 0;
//    
//    for (NSInteger x = 0; x < 2; x++)
//    {
//        [self.hand addObject:[self.playingCardDeck drawRandomCard]];
//    }
}

- (void)hit {
//    if ([self.hand count] && !self.isBusted && !self.isBlackjack)
//    {
//        [self.hand addObject:[self.playingCardDeck drawRandomCard]];
//    }
}

- (BOOL)checkIfBusted {
//    if (self.handScore > 21) {
//        
//    }
    return NO;
}

- (BOOL)isBlackjack
{
//    return [self.handScore integerValue] == 21;
    return NO;
}

- (NSInteger)handScore
{
//    NSInteger score = 0;
//    for (FISPlayingCard *card in self.hand)
//    {
//        score += [card.score integerValue];
//    }
//    
//    for (NSInteger x = 0; x < [self numberOfAces]; x++)
//    {
//        if (score + 10 <= 21)
//        {
//            score += 10;
//        }
//    }
//    
//    return @(score);
    return 0;
}

- (NSInteger)numberOfAces
{
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.rank == 1"];
//    
//    return (NSInteger)[[self.hand filteredArrayUsingPredicate:predicate] count];
    return 0;
}

@end

