//
//  RecipesView.swift
//  Munch
//
//  Created by Samuel Alake on 1/30/22.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
