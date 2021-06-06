//
//  main.swift
//  
//
//  Created by Jochum Wilen on 6/5/21.
// Test taken for Github (c) vgaldush

import Foundation

var testDeck = Deck(sort: true)
var x: Card?
var j = 0
print("*** Mixed Deck ***")
print(testDeck)

x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()

x = nil

print("\n*** Outs: ***")
for i in testDeck.outs {
	    print("outs[\(j)] = \(i)")
        j = j+1
}
print("\n*** Folded cards: ***")
testDeck.fold(c: testDeck.outs[0])
testDeck.fold(c: testDeck.outs[1])
testDeck.fold(c: testDeck.outs[2])
testDeck.fold(c: testDeck.outs[3])
j = 0
for i in testDeck.discards {
	    print("discards[\(j)] = \(i)")
        j = j + 1
}
print("\n*** Left in outs: ***")
j = 0
for i in testDeck.outs {
	    print("outs[\(j)] = \(i)")
        j = j + 1
}
// print("")
// for i in testDeck.cards {
// 	  print(i)
// }
print("\n*** Left of Deck (sorted for visablilty) ***")
let sortedTestDeck = testDeck.cards.sorted {
    ($0.color.rawValue, $0.value.rawValue) < ($1.color.rawValue, $1.value.rawValue)
}
for i in sortedTestDeck {
	  print(i)
}
