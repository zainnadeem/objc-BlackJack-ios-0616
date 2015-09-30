//  FISBlackjackGame.h

#import <Foundation/Foundation.h>
#import "FISPlayingCardDeck.h"

@interface FISBlackjackGame : NSObject

@property (strong, nonatomic) FISPlayingCardDeck *playingCardDeck;
@property (strong, nonatomic) NSMutableArray *hand;
@property (nonatomic) NSInteger handScore;

- (instancetype)init;

- (void)deal;

- (void)hit;

//- (void)checkIfBusted;
//
//- (void)checkIfBlackjack;

@end
