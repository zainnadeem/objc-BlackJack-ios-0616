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
    
    NSLog(@"deck: %@", deck);
    
    [deck shuffleRemainingCards];
    
    NSLog(@"deck: %@", deck);
    
    FISPlayingCard *card = [deck drawFirstCard];
    NSLog(@"card: %@", card);
    NSLog(@"deck: %@", deck);
    
    card = [deck drawFirstCard];
    NSLog(@"card: %@", card);
    NSLog(@"deck: %@", deck);

    card = [deck drawFirstCard];
    NSLog(@"card: %@", card);
    NSLog(@"deck: %@", deck);

    card = [deck drawFirstCard];
    NSLog(@"card: %@", card);
    NSLog(@"deck: %@", deck);

    [deck resetDeck];
    
    NSLog(@"deck: %@", deck);

    card = [deck drawFirstCard];
    NSLog(@"card: %@", card);
    NSLog(@"deck: %@", deck);
    
    return YES;
}

@end
