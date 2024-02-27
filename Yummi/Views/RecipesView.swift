//
//  RecipesView.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 02/02/2024.
//

import Foundation
import SwiftUI


struct RecipesView: View {
    var recipes: [Recipe]
    
    var body: some View {
        NavigationStack {
            List(recipes, id: \.id) { recipe in
                NavigationLink(destination: SpecificRecipeView(recipe: recipe)) {
                    Text(recipe.name)
                }
            }
        }
    }
}

#Preview {
    RecipesView(recipes: CurrentRecipe().examples)
}
