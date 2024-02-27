//
//  Current Ingredient.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 23/01/2024.
//

import Foundation

struct Ingredient {
    let name: String
    var quantity: Int
    var unit: Unit
    let category: Category
    let expiryDate: Date
    
    func displayProperties() -> String {
        let properties = """
Name: \(name)
Quantity: \(quantity)
Units: \(unit)
Category: \(category)
Expiry Date: \(expiryDate)
"""
        return properties
    }
}


enum Category: String {
    case Vegetable
    case Fruit
    case Grain
    case Meat
    case Dairy
    case Carbohydrates
}

enum Unit: String {
    case Gram
    case Kilogram
    case Mililitre
    case Tablespoon
    case Whole
}

struct CurrentIngredient {
    var ingredients = [Ingredient(name: "Flour", quantity: 200, unit: Unit.Gram, category: Category.Grain, expiryDate: Date(timeIntervalSince1970: 1000000.0)),
                       Ingredient(name: "Milk", quantity: 200, unit: Unit.Mililitre, category: Category.Dairy, expiryDate: Date(timeIntervalSince1970: 1000000.0)),
                       Ingredient(name: "Chicken", quantity: 400, unit: Unit.Gram, category: Category.Meat, expiryDate: Date(timeIntervalSince1970: 1000000.0)),
                       Ingredient(name: "Carrot", quantity: 75, unit: Unit.Gram, category: Category.Vegetable, expiryDate: Date(timeIntervalSince1970:  1000000.0))]
}


