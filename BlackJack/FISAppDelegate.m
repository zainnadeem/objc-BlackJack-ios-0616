//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackGame.h"
#import "FISPlayingCard.h"
#import "FISPlayingCardDeck.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISPlayingCard *defaultCard = [[FISPlayingCard alloc] init];
    
    NSLog(@"default card: %@", defaultCard.cardLabel);
    
    FISPlayingCardDeck *deck = [[FISPlayingCardDeck alloc] init];
    FISPlayingCard *draw = [deck drawFirstCard];
    
    NSLog(@"draw: %@", draw.cardLabel);
    
    return YES;
}

@end
