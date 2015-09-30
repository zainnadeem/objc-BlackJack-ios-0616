//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackGame.h"
#import "FISCard.h"
#import "FISCardDeck.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISBlackjackGame *game = [[FISBlackjackGame alloc] init];
    
    NSLog(@"%@", game.player);
    NSLog(@"%@", game.house);
    
    [game newGame];
    
    NSLog(@"%@", game.player);
    NSLog(@"%@", game.house);

    [game newGame];
    
    NSLog(@"%@", game.player);
    NSLog(@"%@", game.house);

    [game newGame];
    
    NSLog(@"%@", game.player);
    NSLog(@"%@", game.house);

    
    
    return YES;
}

@end
