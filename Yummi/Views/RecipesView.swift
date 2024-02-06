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
        List {
            ForEach(recipes) { recipe in
                HStack{
                    Text(recipe.name)
                    Text("Rating: \(recipe.rating)")
                }
            }
        }
    }
}

#Preview {
    RecipesView(recipes: CurrentRecipe().examples)
}
