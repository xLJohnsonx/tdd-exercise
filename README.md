# Testing Exercise

In this exercise you will write a method and set of tests in TDD fashion which calculates a hand's BlackJack score.

## About BlackJack

In the card name BlackJack each card has a value.  Number cards (2-9) carry the card's numeric value.  Face cards on the other hand ("Jack", "Queen", "King") have a value of 10.  Aces (1) can have a value of either 1 or 11, whichever will get the hand closest to 21 without going over.

For example if I my hand is:  `[3, "King", 1]`, my BlackJack score is 14 (3 + 10 + 1).  If I have `[1, "Jack"]` then my score is 21 (11 + 10).

A hand, an array of Card values, must be between 2 and 5 items inclusive.

When a hand's score is greater than 21, the hand is a **bust** and the player loses.

## Part 1:  Identifying Edge & Nominal Cases

With a partner talk through the following questions and write down answers.

1.  What would be two nominal cases?
2.  What edge cases can you determine?  Name at least 3.

When you finish talk with another pair and walk through your answers. 

## Part 2:  Calculating a Score

You will write a method called:  `blackjack_score` which take an array of card values and returns the blackjack score.  The card values can be any of the following, number values 1-9, "King", "Queen", "Jack".  If the array contains an invalid card value or the total exceeds 21, raise an `ArgumentError`


In this exercise you will complete the given tests in `specs/blackjack_score_specs.rb` and updating the `blackjac_score` method in `lib/blackjack_score.rb` to make it pass.
