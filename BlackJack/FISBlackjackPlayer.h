//  FISBlackjackPlayer.h

#import <Foundation/Foundation.h>
#import "FISCard.h"

@interface FISBlackjackPlayer : NSObject

@property (strong, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) NSMutableArray *cardsInHand;
@property (nonatomic, readonly) NSUInteger handscore;

@property (nonatomic, readonly) BOOL aceInHand;
@property (nonatomic, readonly) BOOL stayed;
@property (nonatomic, readonly) BOOL blackjack;
@property (nonatomic, readonly) BOOL busted;

@property (nonatomic) NSUInteger wins;
@property (nonatomic) NSUInteger losses;

- (instancetype)init;

- (instancetype)initWithName:(NSString *)name;

- (void)newGame;

- (void)acceptCard:(FISCard *)card;

- (BOOL)decideToHit;

@end
