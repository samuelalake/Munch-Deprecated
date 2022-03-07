//
//  SampleData.swift
//  Munch
//
//  Created by Samuel Alake on 2/14/22.
//

import Foundation

struct SampleData{
    var ingredient: Ingredient = Ingredient(id: UUID() ,item: "Garlic", itemQuantity: 2, itemUnit: "cloves", itemComments: "freshly diced", miscInput: ",")
    var ingredients: [Ingredient] = [Ingredient(id: UUID(), item: "Tomato", itemQuantity: 3, itemUnit: "packs", itemComments: "freshly diced", miscInput: ","), Ingredient(id: UUID(), item: "Garlic", itemQuantity: 2, itemUnit: "cloves", itemComments: "freshly cut", miscInput: ",")]
}
