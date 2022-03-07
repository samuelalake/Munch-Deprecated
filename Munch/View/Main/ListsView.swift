//
//  Lists.swift
//  Munch
//
//  Created by Samuel Alake on 1/30/22.
//

import SwiftUI

struct ListsView: View {
    @State var selectedRows = Set<UUID>()
    @State var ingredients = SampleData().ingredients
    
    func move(from source: IndexSet, to destination: Int) {
        ingredients.move(fromOffsets: source, toOffset: destination)
    }
    
    @State var editMode:EditMode = EditMode.active
    @State private var showBody = false
    
    var initialBounds = UIScreen.main.bounds
    
    private func delete(_ item: Ingredient) {
        guard let index = ingredients.firstIndex(where: {$0.id == item.id}) else { return }
        ingredients.remove(at: index)
    }
    
    var body: some View{
        NavigationView {
            
            List(selection: $selectedRows){
                
                ForEach(ingredients){ ingredient in
                    IngredientList(ingredient: ingredient, selectedItems: self.$selectedRows)
                        //.fixedSize(horizontal: false, vertical: true)
                        .buttonStyle(PlainButtonStyle())
                        
                        .listRowBackground(Color(UIColor.secondarySystemBackground))
                        .onTapGesture {
                            showBody.toggle()
                        }
                        .frame(height: showBody ? 120 : 80)
                        //.opacity(0.6)
                    
                }
                .onMove(perform: move)
                .onDelete { ingredients.remove(atOffsets: $0) }
        
                //.fixedSize(horizontal: false, vertical: true)
                

            }
                .listStyle(.plain)
                .navigationTitle("Lists")
                .environment(\.editMode, self.$editMode)
                
            
        }
        .navigationViewStyle(.stack)
    }
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        ListsView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
    }
}


