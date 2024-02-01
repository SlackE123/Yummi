//
//  ContentView.swift
//  Yummi
//
//  Created by Slack, Ed (AMM) on 23/01/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var currentIngredient = CurrentIngredient()
    @State private var index = 0
    @State private var ingredientName = ""
    @State private var ingredientQuantity = 0
    @State private var ingredientUnit = ""
    @State private var ingredientCategory = ""
    @State private var ingredientExpiry = Date()
    
    var body: some View {
        VStack {
            Form {
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text(currentIngredient.ingredients[index].displayProperties())
                        .padding()
                }
                VStack(alignment: .trailing) {
                    Section {
                        Button("Next Ingredient", action: { if index == currentIngredient.ingredients.count - 1{
                            index = 0
                        }   else {
                            index += 1
                        }
                        }
                        ).frame(maxWidth: .infinity, alignment: .center)}
                }
            }
            Form {
                VStack {
                    Text("Enter A New Ingredient")
                    
                    TextField("Name", text: $ingredientName)
                    
                    Stepper("Quantity: \(ingredientQuantity)", value: $ingredientQuantity, in: 0...100)
                    
                    Picker("Category:", selection: $ingredientCategory) {
                        Text("Vegetable").tag(Category.Vegetable)
                        Text("Carbohyrdates").tag(Category.Carbohydrates)
                        Text("Fruit").tag(Category.Fruit)
                        Text("Dairy").tag(Category.Dairy)
                        Text("Grain").tag(Category.Grain)
                        Text("Meat").tag(Category.Meat)
                    }
                    Picker("Unit of Measurement:", selection: $ingredientUnit) {
                        Text("Gram").tag(Unit.Gram)
                        Text("Kilogram").tag(Unit.Kilogram)
                        Text("Mililitre").tag(Unit.Mililitre)
                        Text("Tablespoon").tag(Unit.Tablespoon)
                        Text("Whole").tag(Unit.Whole)
                    }
                    DatePicker(
                    "Date",
                    selection: $ingredientExpiry,
                    displayedComponents: [.date]
                    )
                    Button("Submit Ingredient", action: {
                        currentIngredient.ingredients.append(Ingredient(name: ingredientName, quantity: ingredientQuantity, unit: ingredientUnit, category: ingredientCategory, expiryDate: ingredientExpiry))
                    })
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
