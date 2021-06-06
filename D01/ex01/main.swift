//
//  main.swift
//  
//
//  Created by Jochum Wilen on 6/5/21.
//

func test()
{
    print("\nColours:")
    let allColourTab = Color.allColors
    for eachcolor in allColourTab
    {
        print("Name: \(eachcolor), value: \(eachcolor.rawValue)")
    }
    print("\nValues:")
    let allValueTab = Value.allValues
    for eachvalue in allValueTab
    {
        print("Name: \(eachvalue), value: \(eachvalue.rawValue)")
    }
    print("\nThe Deck contains the following cards:")
    var i = 0;
    for eachcard in allColourTab
    {
        for eachnbr in allValueTab
        {
        print("Color: \(eachcard.rawValue), Value: \(eachnbr.rawValue)")
            i += 1
        }
    }
    print("Number of cards in the deck: \(i)" )
}

test()
