//  FISPlayingCardDeck.h

#import "FISPlayingCard.h"

@interface FISPlayingCardDeck : NSObject

@property (nonatomic, getter = isFaceUp)BOOL faceUp;
@property (strong, nonatomic) NSMutableArray * cards;

- (FISPlayingCard *)drawRandomCard;
- (void)addCard:(FISPlayingCard *)card;
- (instancetype)init;

@end
