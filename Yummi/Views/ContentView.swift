//
//  ContentView.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var ingredientsViewShowing = true
    var body: some View {
        VStack{
            HStack {
                Button("< Change View", action: {
                    if ingredientsViewShowing {
                        ingredientsViewShowing = false
                    } else{
                        ingredientsViewShowing = true
                    }
                })
                .padding(.horizontal)
                Spacer()
            }
                .bold()
            Spacer()
            if ingredientsViewShowing{
                IngredientsView()
            } else{
                RecipesView(recipes: CurrentRecipe().examples)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
