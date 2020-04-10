from itertools import combinations
import random

ranks = ['A', 'K', 'Q', 'J', 'T', '9', '8', '7', '6', '5', '4', '3', '2']
suits = ['♥', '♦', '♣', '♠'] 
cards = []
hands = []

# pair all ranks and suit to make a deck of cards: 52 total

for suit in suits:
    for rank in ranks:
        cards.append((rank+suit))


# hands should be all combinations of cards w/o duplicate cards: 1326 total

combo = combinations(cards,2)

for i in list(combo):
    hands.append(i)

def dealer(x):
    deal = 0 
    while deal < x:   
        holecards = random.choice(hands)
        deal += 1
        print(deal,' - ', *holecards, sep = '')
    return dealer
# shuffle up and deal

dealer(9)