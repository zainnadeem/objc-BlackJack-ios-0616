//  FISCard.h

@interface FISCard : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSString *rank;

@property (strong, nonatomic, readonly) NSString *cardLabel;
@property (nonatomic, readonly) NSUInteger cardValue;

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;

- (instancetype)init;
- (instancetype)initWithSuit:(NSString *)suit
                        rank:(NSString *)rank;

@end
