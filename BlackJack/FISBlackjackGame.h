//  FISBlackjackGame.h

#import <Foundation/Foundation.h>
#import "FISPlayingCardDeck.h"

@interface FISBlackjackGame : NSObject

@property (strong, nonatomic) FISPlayingCardDeck *playingCardDeck;
@property (strong, nonatomic) NSNumber *handScore;
@property (strong, nonatomic) NSMutableArray *hand;
@property (nonatomic) BOOL isBusted;
@property (nonatomic) BOOL isBlackjack;

- (id)init;
- (void)deal;
- (void)hit;

@end
