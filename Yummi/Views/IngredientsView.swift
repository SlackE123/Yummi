//
//  IngredientsView.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 22/02/2024.
//

import SwiftUI



struct IngredientsView: View {
    @State var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    
    var body: some View {
        VStack {
            Form {
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text(ingredientsViewModel.currentIngredient.ingredients[ingredientsViewModel.index].displayProperties())
                        .padding()
                }
                VStack(alignment: .trailing) {
                    Section {
                        Button("Next Ingredient", action: { if ingredientsViewModel.index == ingredientsViewModel.currentIngredient.ingredients.count - 1{
                            ingredientsViewModel.index = 0
                        }   else {
                            ingredientsViewModel.index += 1
                        }
                        }
                        ).frame(maxWidth: .infinity, alignment: .center)}
                }
            }
            Form {
                VStack {
                    Text("Enter A New Ingredient")
                    
                    TextField("Name", text: $ingredientsViewModel.ingredientName)
                    
                    Stepper("Quantity: \(ingredientsViewModel.ingredientQuantity)", value: $ingredientsViewModel.ingredientQuantity, in: 0...100)
                    
                    Picker("Category:", selection: $ingredientsViewModel.ingredientCategory) {
                        Text("Vegetable").tag(Category.Vegetable)
                        Text("Carbohyrdates").tag(Category.Carbohydrates)
                        Text("Fruit").tag(Category.Fruit)
                        Text("Dairy").tag(Category.Dairy)
                        Text("Grain").tag(Category.Grain)
                        Text("Meat").tag(Category.Meat)
                    }
                    Picker("Unit of Measurement:", selection: $ingredientsViewModel.ingredientUnit) {
                        Text("Gram").tag(Unit.Gram)
                        Text("Kilogram").tag(Unit.Kilogram)
                        Text("Mililitre").tag(Unit.Mililitre)
                        Text("Tablespoon").tag(Unit.Tablespoon)
                        Text("Whole").tag(Unit.Whole)
                    }
                    DatePicker(
                    "Date",
                    selection: $ingredientsViewModel.ingredientExpiry,
                    displayedComponents: [.date]
                    )
                    Section{
                        Button("Submit Ingredient", action: {
                            ingredientsViewModel.addNewIngredient()
                        })
                    }
                }
            }
        }
    }
}


#Preview {
    IngredientsView()
}
