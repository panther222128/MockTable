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
            HomeView(selectedPriceRangeBestSegmentedIndex: 0)
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            ReviewListView()
                .tabItem {
                    Image(systemName: "ellipsis.message")
                }
            
            MyDiningView()
                .tabItem {
                    Image(systemName: "calendar")
                }
            
            MyPageView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
