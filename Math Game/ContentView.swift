//
//  ContentView.swift
//  Math Game
//
//  Created by Tanvir Rahman on 17.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
        TabView {
            gameAutomation()
                .tabItem {
                Image(systemName: "square.grid.2x2")
                }
            circle()
                .tabItem {
                    Image(systemName: "circle.grid.2x2")
                }
    }
        .navigationTitle("Math Game")
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
