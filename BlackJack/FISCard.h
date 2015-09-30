//  FISCard.h

@interface FISCard : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSString *rank;

@property (strong, nonatomic) NSString *cardLabel;
@property (nonatomic) NSUInteger cardValue;

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;

- (instancetype)init;
- (instancetype)initWithSuit:(NSString *)suit
                        rank:(NSString *)rank;

@end
