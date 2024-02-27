//
//  SpecificRecipeView.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 27/02/2024.
//

import SwiftUI

struct SpecificRecipeView: View {
    let recipe: Recipe
    var body: some View {
        NavigationStack {
            VStack {
                Image("Egg Fried Rice")
                
                Text("Rating: \(recipe.rating)/10").bold()
                
                List(CurrentIngredient().ingredients, id: \.name) {ingredient in
                    HStack{
                        if ingredient.unit.rawValue == "Whole" {
                            Text("\(ingredient.quantity) \(ingredient.unit.rawValue) \(ingredient.name)s")
                        } else {
                            Text("\(ingredient.quantity) \(ingredient.unit.rawValue)s of \(ingredient.name)")
                        }
                    }
                }
                Text("Steps: \(recipe.steps)")
                Spacer()
            }
            .navigationTitle("\(recipe.name)")
        }
    }
}

#Preview {
    SpecificRecipeView(recipe: )
}
