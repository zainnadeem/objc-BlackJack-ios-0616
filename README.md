---
  tags: tutorial, beginner, OOP, Object-Oriented Programming, model 
  languages: objc
---

BlackJack 
=======

### Goals 
- Put it all together: Use inheritence to create a playable card game 
- Work with random numbers 

### Instructions 

We'll be building a BlackJack game on top of OOP-Cards. If you like, you can start with a copy of your completed OOP-Cards assignment.  

Create a `Deck` and a `PlayingCardDeck` Class.  PlayingCardDeck should inherit from deck.  


Deck should have the following properties and methods: 

```objc

@property (strong, nonatomic) NSMutableArray *cards; // the cards in the deck 
- (Card *)drawRandomCard; // should return a random card, and remove that card from the cards array 

```

PlayingCardDeck should have the following properties and methods:

```objc

- (id)init; // Playing Card Deck's init method should create an unshuffled deck of all 52 playing cards and initialize the cards mutable array with the 52 cards. 

```

Create a BlackjackGame class. 

BlackjackGame should have the following properties and methods: 

```objc

- (id)init; // should initialize playingCardDeck with a new deck and set score and isBusted to default values
- (void)deal; // should deal 2 new cards and add the cards to the hand.   
- (void)hit; // should deal one additional card, and add the card to the hand.   

@property (strong, nonatomic) PlayingCardDeck *playingCardDeck; // returns the playingCardDeck in use 
@property (strong, nonatomic) NSNumber *handScore; // returns the total value of cards in the hand. Remember: Aces can be 1 or 11. 
@property (strong, nonatomic) NSMutableArray *hand; //returns the cards in the hand 
@property (nonatomic) BOOL isBusted; // returns YES if handScore is more than 21
@property (nonatomic) BOOL isBlackjack; // returns YES if handScore is 21

```

From the App Delegate 

- Create a new BlackJackGame
- Deal 
- Keep hitting until either busting or getting a blackjack  
- NSLog the final hand

### Extra Credit

Add a second AI player, and take turns playing the game. 


