//
//  TabBar.swift
//  Munch
//
//  Created by Samuel Alake on 1/30/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem({
                    Label("Home", systemImage: "app")
                })
            
            RecipesView()
                .tabItem({
                    Label("Recipes", systemImage: "list.bullet.rectangle.portrait")
                })
            
            
            MealPlanView()
                .tabItem({
                    Label("Meal Plan", systemImage: "calendar")
                })
            
            ListsView()
                .tabItem({
                    Label("Lists", systemImage: "list.bullet.indent")
                })
            
            SettingsView()
                .tabItem({
                    Label("Settings", systemImage: "gear")
                })
        }
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
