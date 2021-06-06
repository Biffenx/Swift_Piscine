//
//  main.swift
//  
//
//  Created by Jochum Wilen on 6/5/21.
//
func test ()
{
    print("*** Test to print all Spades ***")
    for allSpades in Deck.allSpades
    {
        print(allSpades)
    }
    print("\n*** Test to print all Diamonds ***")
    for allDiamonds in Deck.allDiamonds
       {
           print(allDiamonds)
       }
    print("\n*** Test to print all Hearts ***")
    for allHearts in Deck.allHearts
       {
           print(allHearts)
       }
    print("\n*** Test to print all Clubs ***")
    for allClubs in Deck.allClubs
       {
           print(allClubs)
       }
    print("\n*** Test to print all Cards ***")
    var i = 0
    for allCards in Deck.allCards
       {
           print(allCards)
            i += 1
       }
    print("Cards of game: \(i)")
}
test()
