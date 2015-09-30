//  FISPlayingCardDeck.m

#import "FISPlayingCardDeck.h"
#import "FISPlayingCard.h"

@implementation FISPlayingCardDeck

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setupPlayingCardDeck];
    }
    return self;
}

- (NSMutableArray *)cards
{
    if (!_cards)
    {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (FISPlayingCard *)drawRandomCard
{
    FISPlayingCard *randomCard = [[FISPlayingCard alloc] init];
    
    if (self.cards.count)
    {
        int index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

- (void)addCard:(FISPlayingCard *)card
{
    [self.cards addObject:card];
}

- (void)setupPlayingCardDeck
{
    for (NSString *suit in [FISPlayingCard validSuits])
    {
        for (NSUInteger rank = 1; rank <= [[FISPlayingCard maxRank] integerValue]; rank++)
        {
            [self addCard:[[FISPlayingCard alloc] initWithSuit:suit rank:@(rank)]];
        }
    }
}
@end
