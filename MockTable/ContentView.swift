//
//  ContentView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }
            
            Text("Second")
                .tabItem {
                    Text("Second")
                }
            
            Text("Third")
                .tabItem {
                    Text("Third")
                }
            
            Text("Fourth")
                .tabItem {
                    Text("Fourth")
                }
            
            Text("Fifth")
                .tabItem {
                    Text("Fifth")
                }
        }
    }
}

#Preview {
    ContentView()
}
