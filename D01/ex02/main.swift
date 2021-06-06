//
//  main.swift
//  
//
//  Created by Jochum Wilen on 6/5/21.
//

let card1 : Card = Card(color: Color.spades, value: Value.Eight)
let card2 : Card = Card(color: Color.clubs, value: Value.Ace)
let card3 : Card = Card(color: Color.hearts, value: Value.Four)
let card4 : Card = Card(color: Color.diamonds, value: Value.King)

print(card1)
print("Cards we have:")
print("Card 1 is: \(card1)")
print("Card 2 is: \(card2)")
print("Card 3 is: \(card3)")
print("Card 4 is: \(card4)")
print("\n *** Test for override function ***")
print("Test if Card 1 is equal to Card 2")
print(card1.isEqual(card2))
print("Test if Card 1 is equal to Card 3")
print(card1.isEqual(card3))
print("Test if Card 1 is equal to Card 4")
print(card1.isEqual(card4))
print("Test if Card 1 is equal to Card 1")
print(card1.isEqual(card1))
print("\n *** Test for overload operator ***")
print("Test if Card 1 is equal to Card 2")
print(card1 == card2)
print("Test if Card 1 is equal to Card 3")
print(card1 == card3)
print("Test if Card 1 is equal to Card 4")
print(card1 == card4)
print("Test if Card 1 is equal to Card 1")
print(card1 == card1)
