//  FISPlayingCard.h

@interface FISPlayingCard : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSString *rank;

@property (strong, nonatomic) NSString *cardLabel;
@property (nonatomic) NSInteger cardValue;

- (instancetype)init;
- (instancetype)initWithSuit:(NSString *)suit
                        rank:(NSString *)rank;

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;

@end
