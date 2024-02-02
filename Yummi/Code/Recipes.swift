//
//  Recipes.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 02/02/2024.
//

import Foundation

struct Recipe{
    let name: String
    let ingredients: [Ingredient]
    let isFavourite: Bool
    let rating: Double
    
    func displayProperties() -> String{
        let properties = """
Name: \(name)
Ingredients: \(ingredients)
Favourited: \(isFavourite)
Rating: \(rating)


"""
        return properties
    }
}

struct CurrentRecipe{
    var recipes = [Recipe(name: "Egg Fried Rice", ingredients: [Ingredient(name: "Eggs", quantity: 4, unit: Unit.Whole, category: Category.Dairy, expiryDate: Date(timeIntervalSince1970: 1000000000.0), Ingredient(name: "Fried", quantity: 1, unit: Unit.Whole, category: Category.Carbohydrates, expiryDate: Date(timeIntervalSince1970: 1000000000.0)), Ingredient(name: )])]
}
