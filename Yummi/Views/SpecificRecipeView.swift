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
                Image("\(recipe.name)")
                
                Text("Rating: \(recipe.rating)/10").bold()
                
                List(recipe.ingredients, id: \.name) {ingredient in
                    HStack{
                        if ingredient.unit.rawValue == "Whole" {
                            Text("\(ingredient.quantity) \(ingredient.unit.rawValue) \(ingredient.name)")
                        } else {
                            Text("\(ingredient.quantity) \(ingredient.unit.rawValue) of \(ingredient.name)")
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
    SpecificRecipeView(recipe: Recipe.example)
}
