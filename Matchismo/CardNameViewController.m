//
//  CardNameViewController.m
//  Matchismo
//
//  Created by Tom Hogans on 12/31/13.
//  Copyright (c) 2013 Tom Hogans. All rights reserved.
//

#import "CardNameViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardNameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@property (strong, nonatomic) PlayingCardDeck *deck;
@end

@implementation CardNameViewController


- (void)setFlipsCount:(int)flipsCount
{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", flipsCount];
    NSLog(@"flipsCount = %d", flipsCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *newCard = [self.deck drawRandomCard];
        NSLog([newCard contents]);
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:[newCard contents] forState:UIControlStateNormal];
    }
    self.flipsCount++;
}

- (PlayingCardDeck *)deck
{
    if (!_deck)
    {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

@end
