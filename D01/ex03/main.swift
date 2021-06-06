//
//  main.swift
//  
//
//  Created by Jochum Wilen on 6/5/21.
//

import Foundation

func test()
{
    var testCards = Deck.allCards
    testCards.shuffle()

    print("Shuffled card deck:\n")
    
    for elem in testCards {
	    print(elem)
    }
}

test()
