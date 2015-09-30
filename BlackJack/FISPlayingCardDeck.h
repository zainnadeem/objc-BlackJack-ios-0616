//  FISPlayingCardDeck.h

#import "FISPlayingCard.h"

@interface FISPlayingCardDeck : NSObject

@property (strong, nonatomic) NSMutableArray *remainingCards;
@property (strong, nonatomic) NSMutableArray *dealtCards;

- (instancetype)init;

- (FISPlayingCard *)drawFirstCard;

- (void)resetDeck;

- (void)gatherDealtCards;

- (void)shuffleRemainingCards;

@end
