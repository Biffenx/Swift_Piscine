//
//  Card.swift
//  
//
//  Created by Jochum Wilen on 6/5/21.
//

import Foundation

class Card : Object {
    var color: Color;
    var value: Value;
    
    override var description: String {
        return("(\value.rawValue), \(color.rawValue))")
    }
}
