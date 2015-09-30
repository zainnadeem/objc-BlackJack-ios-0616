//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackGame.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //FISPlayingCardDeck *deck = [[FISPlayingCardDeck alloc] init];
    FISBlackjackGame *game = [[FISBlackjackGame alloc] init];
    [game deal];
    
    while (!game.isBusted && !game.isBlackjack) {
        [game hit];
        NSLog(@"%@", game.hand);
    }
    
    if (game.isBlackjack)
    {
        NSLog(@"Blackjack! Score = %@", game.handScore);
    }
    else
    {
        NSLog(@"Busted! Score = %@", game.handScore);
    }
    
    return YES;
}

@end
