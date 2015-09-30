//  FISPlayingCardDeck.h

#import "FISPlayingCard.h"

@interface FISPlayingCardDeck : NSObject

@property (strong, nonatomic) NSMutableArray *remainingCards;

- (instancetype)init;

- (FISPlayingCard *)drawFirstCard;

- (void)shuffleRemainingCards;

@end
