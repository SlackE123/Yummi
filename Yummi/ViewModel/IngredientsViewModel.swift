//
//  IngredientsViewModel.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 29/02/2024.
//

import Foundation
@Observable
class IngredientsViewModel{
    var currentIngredient = CurrentIngredient()
    var index = 0
    var ingredientName = ""
    var ingredientQuantity = 0
    var ingredientUnit = Unit.Gram
    var ingredientCategory = Category.Grain
    var ingredientExpiry = Date()
    
    func addNewIngredient() {
        currentIngredient.ingredients.append(Ingredient(name: ingredientName, quantity: ingredientQuantity, unit: ingredientUnit, category: ingredientCategory, expiryDate: ingredientExpiry))
    }
}
