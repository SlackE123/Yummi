//
//  Current Ingredient.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 23/01/2024.
//

import Foundation

enum Category {
    case Vegetable
    case Fruit
    case Grain
    case Meat
    case Dairy
    case Carbohydrates
}

enum Unit {
    case Gram
    case Kilogram
    case Mililitre
    case Tablespoon
    case Whole
}

struct CurrentIngredient {
    var ingredients = [Ingredient(name: "Flour", quantity: 200, unit: Unit.Gram, category: Category.Grain, expiryDate: "19/11/2026"),
                       Ingredient(name: "Milk", quantity: 200, unit: Unit.Mililitre, category: Category.Dairy, expiryDate: "01/02/2024"),
                       Ingredient(name: "Chicken", quantity: 400, unit: Unit.Gram, category: Category.Meat, expiryDate: "14/03/2024"),
                       Ingredient(name: "Carrot", quantity: 75, unit: Unit.Gram, category: Category.Vegetable, expiryDate: "29/07/2024")]
}
