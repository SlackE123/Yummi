//
//  Recipes.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 02/02/2024.
//

import Foundation

struct Recipe: Identifiable {
    let id: UUID = UUID()
    let cookBookPageNumber: Int
    let name: String
    let ingredients: [Ingredient]
    let isFavourite: Bool
    let rating: Int
    let steps : String
    
    func displayProperties() -> String{
        let properties = """
Name: \(name)
Ingredients: \(ingredients)
Favourited: \(isFavourite)
Rating: \(rating)

"""
        return properties
    }


    #if DEBUG
    
    var examples = [Recipe(cookBookPageNumber: 1, name: "Egg Fried Rice", ingredients: [Ingredient(name: "Eggs", quantity: 4, unit: Unit.Whole, category: Category.Dairy, expiryDate: Date.now), Ingredient(name: "Fried", quantity: 1, unit: Unit.Whole, category: Category.Carbohydrates, expiryDate: Date.now), Ingredient(name: "Rice", quantity: 150, unit: Unit.Gram, category: Category.Grain, expiryDate: Date.now)], isFavourite: true, rating: 9, steps: "There are 3 ingredients, egg, fried and rice. You cant mess it up"), Recipe(cookBookPageNumber: 1, name: "Doner Kebab", ingredients: [Ingredient(name: "Lamb", quantity: 100, unit: Unit.Gram, category: Category.Meat, expiryDate: Date.now), Ingredient(name: "Wrap", quantity: 1, unit: Unit.Whole, category: Category.Grain, expiryDate: Date.now)], isFavourite: false, rating: 8, steps: "Go down to the local kebab store at 2 am")]
    var example = Recipe(cookBookPageNumber: 1, name: "Egg Fried Rice", ingredients: [Ingredient(name: "Eggs", quantity: 4, unit: Unit.Whole, category: Category.Dairy, expiryDate: Date.now), Ingredient(name: "Fried", quantity: 1, unit: Unit.Whole, category: Category.Carbohydrates, expiryDate: Date.now), Ingredient(name: "Rice", quantity: 150, unit: Unit.Gram, category: Category.Grain, expiryDate: Date.now)], isFavourite: true, rating: 9, steps: "There are 3 ingredients, egg, fried and rice. You cant mess it up")
    #endif
}
