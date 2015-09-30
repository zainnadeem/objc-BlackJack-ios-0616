//  FISPlayingCard.m

#import "FISPlayingCard.h"

@implementation FISPlayingCard

- (instancetype)init {
    
    self = [super init];
    
    if (self)
    {
        self = [self initWithSuit:@"!" rank:@"N"];
    }
    return self;
}

- (instancetype)initWithSuit:(NSString *)suit rank:(NSString *)rank {
    
    self = [super init];
    
    if (self)
    {
        _suit = suit;
        _rank = rank;
        _cardLabel = [self cardLabelForSuitAndRank];
        _cardValue = [self cardValueForRank];
    }
    return self;
}

- (NSString *)cardLabelForSuitAndRank {
    NSString *cardLabel = [NSString stringWithFormat:@"%@ %@", self.suit, self.rank];
    return cardLabel;
}

- (NSInteger)cardValueForRank {
    NSArray *validRanks = [FISPlayingCard validRanks];
    
    NSUInteger index = [validRanks indexOfObject:self.rank];
    NSUInteger cardValue = index + 1;
    
    return cardValue;
}

+ (NSArray *)validSuits {
    return @[@"♠",@"♥",@"♣",@"♦"];
}

+ (NSArray *)validRanks {
    return @[ @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

@end
