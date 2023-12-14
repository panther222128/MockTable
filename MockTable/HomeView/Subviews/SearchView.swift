//
//  SearchView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/13/23.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var text: String
    
    var body: some View {
           HStack {
               Image(systemName: "1.circle")
               
               HStack {
                   Image(systemName: "magnifyingglass")
    
                   TextField("지역, 음식, 매장명 검색", text: $text)
                       .foregroundStyle(.primary)
    
                   if !text.isEmpty {
                       Button(action: {
                           self.text = ""
                       }) {
                           Image(systemName: "bell")
                       }
                   } else {
                       EmptyView()
                   }
               }
               .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
               .foregroundStyle(.secondary)
               .background(Color(.secondarySystemBackground))
               .cornerRadius(10.0)
               
               Button(action: {
                   
               }) {
                   Image(systemName: "bookmark")
                       .foregroundStyle(.black)
                       .imageScale(.large)
               }
               
               Button(action: {
                   
               }) {
                   Image(systemName: "bell")
                       .foregroundStyle(.black)
                       .imageScale(.large)
               }
           }
           .padding(.horizontal)
       }
}

#Preview {
    SearchView(text: .init(get: {
        return ""
    }, set: { string in
        
    }))
}
