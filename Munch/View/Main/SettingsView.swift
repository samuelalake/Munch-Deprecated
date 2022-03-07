//
//  SettingsView.swift
//  Munch
//
//  Created by Samuel Alake on 1/30/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
