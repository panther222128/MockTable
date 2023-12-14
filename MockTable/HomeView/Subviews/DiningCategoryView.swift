//
//  DiningCategoryView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

struct DiningCategoryView: View {
    
    private let items: [DiningCategoryItem] = [.init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세"), .init(id: .init(), imageName: "cup.and.saucer", title: "오마카세")]
    private let rows: [GridItem] = [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)]
    
    var body: some View {
        LazyHGrid(rows: rows, spacing: 12) {
            ForEach(items) { item in
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: item.imageName)
                            .foregroundStyle(.black)
                        Text(item.title)
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

struct DiningCategoryItem: Identifiable {
    let id: UUID
    let imageName: String
    let title: String
}

#Preview {
    DiningCategoryView()
}
