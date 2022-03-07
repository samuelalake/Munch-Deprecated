//
//  Ingredients.swift
//  Munch
//
//  Created by Samuel Alake on 2/14/22.
//

import Foundation

struct Ingredient: Identifiable{
    
    var id: UUID
    var item: String
    var itemQuantity: Double
    var itemUnit: String
    var itemComments: String
    var miscInput: String

}
