//
//  IngredientList.swift
//  Munch
//
//  Created by Samuel Alake on 2/14/22.
//

import SwiftUI

struct IngredientList: View {
    let ingredient: Ingredient
    @State private var showBody = false
    //@Binding var tappedItems: Set<UUID>
    @Binding var selectedItems: Set<UUID>
    //var boundsSize = UIView.main.bounds
    
//    var isTapped: Bool {
//        tappedItems.contains(ingredient.id)
//    }
    var isSelected: Bool {
        selectedItems.contains(ingredient.id)
    }
    
    var body: some View {
        VStack {
             
            HStack{
                VStack(alignment: .leading) {
                    
                    VStack(alignment: .leading){
                    Text(ingredient.item)
                        
                    Text("\(String(ingredient.itemQuantity)) \(ingredient.itemUnit)\(ingredient.miscInput) \(ingredient.itemComments)")
                        .font(.footnote)
                    .foregroundColor(.secondary)
                    }
                    .onTapGesture {
                        print("edit ingredient")
                    }
                    
                    if(showBody){
                        
                        Divider()
                        
                        Text("This item is used in")
                            .font(.caption)
                            
                        //Text ("id is \(ingredient.id)")
                        
                        Text("Chicken Parmesan with Sprout Brussels")
                           .foregroundColor(.accentColor)
                            .padding(.leading)
                            .font(.footnote)
                            .onTapGesture {
                                print("recipe clicked")
                            }
                        
                    }
                }
                
                Spacer()
            }
            .contentShape(Rectangle())
            .onTapGesture {
                showBody.toggle()
            }
            
            
            
            
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical)
        //.frame(height: showBody ? 120 : 80)
    }
}

struct IngredientList_Previews: PreviewProvider {
    static var previews: some View {
        
        let tappedItems = Set<UUID>()
        
        IngredientList(ingredient: SampleData().ingredient, selectedItems: .constant(tappedItems))
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
