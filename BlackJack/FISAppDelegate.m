//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackPlayer.h"
#import "FISCardDeck.h"
#import "FISBlackjackGame.h"
#import "FISCard.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISBlackjackGame *game = [[FISBlackjackGame alloc] init];
    [game playBlackjack];
    
    
    

    
    
    
    
    
    return YES;
}

@end
