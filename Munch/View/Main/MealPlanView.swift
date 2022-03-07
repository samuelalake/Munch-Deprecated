//
//  MealPlanView.swift
//  Munch
//
//  Created by Samuel Alake on 1/30/22.
//

import SwiftUI

struct MealPlanView: View {
    var body: some View {
        ZStack {
            Color.gray
            
            NavigationView {
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .navigationTitle("Meal Plan")
            }
            .navigationViewStyle(.stack)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct MealPlan_Previews: PreviewProvider {
    static var previews: some View {
        MealPlanView()
    }
}
