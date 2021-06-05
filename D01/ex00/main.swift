//
//  main.swift
//  
//
//  Created by Jochum Wilen on 6/5/21.
//

func test()  {
    print("\nColours:\n")
    let allColourTab = Color.allColors
    for eachcolor in allColourTab {
        print("Name: \(eachcolor), value: \(eachcolor.rawValue)")
    }
}

test()
