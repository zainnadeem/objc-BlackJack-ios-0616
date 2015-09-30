//  FISPlayingCard.h

@interface FISPlayingCard : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSNumber *rank;
@property (strong, nonatomic) NSNumber *score; 

- (instancetype)initWithSuit:(NSString *)suit
                        rank:(NSNumber *)rank;

+ (NSArray *)rankStrings;
+ (NSArray *)validSuits;
+ (NSNumber *)maxRank;

@end
