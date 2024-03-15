//
//  SpecificIngredientView.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 15/03/2024.
//

import SwiftUI

struct SpecificIngredientView: View {
    @State var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    let ingredient: Ingredient
    var body: some View {
        VStack {
            Form {
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text(ingredientsViewModel.currentIngredient.ingredients[ingredientsViewModel.index].displayProperties())
                        .padding()
                }
            }
        }
    }
}

#Preview {
    SpecificIngredientView()
}
