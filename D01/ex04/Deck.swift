//
//  Deck.swift
//  Ex 01
//
//  Created by Jochum Wilen on 6/6/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import Foundation

class Deck : NSObject
{
    static let allSpades:[Card] = Value.allValues.map({Card(color:Color.spades, value: $0)})
    static let allDiamonds:[Card] = Value.allValues.map({Card(color:Color.diamonds, value: $0)})
    static let allHearts:[Card] = Value.allValues.map({Card(color:Color.hearts, value: $0)})
    static let allClubs:[Card] = Value.allValues.map({Card(color:Color.clubs, value: $0)})
    static let allCards:[Card] = allSpades + allDiamonds + allHearts + allClubs

    var cards: [Card] = allCards
    var discards: [Card] = []
    var outs: [Card] = []

    init(sort: Bool)
    {
        if sort == true
        {
            cards.shuffle()
        }
    }

    override var description : String
    {
        var cardResult: String = ""
        for elem in self.cards
        {
            cardResult += "\(elem.color) \(elem.value) \n"

        }
        return cardResult
    }

    func draw() -> Card?
    {
        if cards.isEmpty == false
        {
            let firstCard = cards.first
            outs.append(firstCard!)
            cards.removeFirst(1)
            return(firstCard)
        }
        return nil
    }

    func fold(c:Card?)
    {
       var i = 0
       for elem in self.outs
       {
           if c == elem
           {
               self.discards.append(elem)
               self.outs.remove(at: i)
           }
           i += 1
       } 
    }
}

extension Array
{
    mutating func shuffle()
    {
        var i = 0
        for card in 0..<self.count
        {
            i = Int(arc4random_uniform(UInt32(self.count)))
            if card != i 
            {
                self.swapAt(card, i)
            }
        }
    }
}
