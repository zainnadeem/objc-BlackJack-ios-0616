---
  tags: tutorial, beginner, OOP, Object-Oriented Programming, model 
  languages: objc
---

BlackJack 
=======

### Goals 
 - **Put it all together!** Use your knowledge of custom classes, properties, and methods to create a playable card game.

### Instructions 

We'll be building a BlackJack game. Take a minute and think about how the game could be broken down into classes... we're going to need cards, a deck, and a class for the game itself. 

1. Let's start with the most basic element of the game, the card. Make a `FISPlayingCard` class. Your cards should:

   * have a suit (use these: ♥  ♠  ♣  ♦)
   * have a rank (1-13, Jack/Queen/King == 11/12/13)
   * validate suit/rank, meaning they must not allow the previous two rules to be broken. An invalid suit or rank should return `@""` or `@0`, respectively.
  
     *Note: feel free to use your `PlayingCard` class from the previous lab (OOP-Cards-Model).*

2. Now that we've got cards, create `FISPlayingCardDeck` with the following:
	
   * an `NSMutableArray` property named `cards` to store your playing cards.
   * a `drawRandomCard` method that "draws" (returns) a random card from your `cards` property. (*hint: google `arc4random_uniform`*) Don't forget to remove your drawn card from the deck!
   * override its `init` so that when a deck is created, its `cards` property is initialized and filled with the appropriate 52 `FISPlayingCard`s.

      **When you're done, run the PlayingCardDeckTests to make sure this works as intended.**
   
3. A game's gotta have rules — create the `FISBlackjackGame` class. 

	Your class should have the following properties and methods: 

   ```obj-c
   @property (strong, nonatomic) FISPlayingCardDeck *playingCardDeck; // the playingCardDeck in use
   @property (strong, nonatomic) NSNumber *handScore; // returns the total value of cards in the hand. Remember: Aces can be 1 or 11 !!!
   @property (strong, nonatomic) NSMutableArray *hand; //returns the cards in the hand 
   @property (nonatomic) BOOL isBusted; // returns YES if handScore is more than 21
   @property (nonatomic) BOOL isBlackjack; // returns YES if handScore is 21

   - (instancetype)init; // should initialize playingCardDeck with a new deck, set handScore and isBusted to default values
   - (void)deal; // should deal 2 new cards and add those cards to the hand.   
   - (void)hit; // should deal one additional card and add it card to the hand.   
   ```

4. From the AppDelegate (in your old friend `didFinishLaunchingWithOptions`):

   * Create a new `FISBlackjackGame`
   * Deal 
   * Keep hitting until either busting or getting a blackjack  
   * NSLog the final hand
   * **Run it!** Fix any unexpected behavior.
   * Don't forget to run the tests!

### Extra Credit
   * Add a second AI player, and take turns playing the game. This may actually be easier than you'd think :)
