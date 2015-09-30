//  FISCard.h

@interface FISCard : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSString *rank;

@property (strong, nonatomic) NSString *cardLabel;
@property (nonatomic) NSUInteger cardValue;

- (instancetype)init;
- (instancetype)initWithSuit:(NSString *)suit
                        rank:(NSString *)rank;

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;

@end
