//
//  CircleCategoryView.swift
//  MockTable
//
//  Created by Horus on 12/16/23.
//

import SwiftUI

protocol CircleCategoryView: View {
    var title: String { get }
    var items: [CategoryItem] { get }
    var rows: [GridItem] { get }
    var imageWidth: CGFloat { get }
    var isThemeBestCategory: Bool { get }
}

extension CircleCategoryView {
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 12, bottom: 4, trailing: 0))
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 12) {
                    ForEach(items) { item in
                        Button(action: {
                            
                        }, label: {
                            VStack {
                                if !isThemeBestCategory {
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundStyle(.black)
                                        .clipShape(Circle())
                                        .frame(width: imageWidth)
                                    if let name = item.name {
                                        Text(name)
                                            .foregroundStyle(Color.black)
                                    }
                                } else {
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundStyle(.black)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay(alignment: .topLeading) {
                                            if let themeTitle = item.themeTitle {
                                                Text(themeTitle)
                                                    .foregroundStyle(Color.white)
                                                    .font(.system(size: 12))
                                                    .lineLimit(2)
                                                    .padding()
                                            }
                                            
                                        }
                                        .overlay(alignment: .bottomLeading) {
                                            if let tags = item.tags {
                                                let tagsString: String = tags.reduce("") { $0 + $1 }
                                                Text(tagsString)
                                                    .foregroundStyle(Color.white)
                                                    .font(.system(size: 8))
                                                    .padding()
                                            }
                                        }
                                        .compositingGroup()
                                        .frame(width: imageWidth)
                                        .padding()
                                }
                            }
                        })
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
        }
    }
}

struct CategoryItem: Identifiable {
    let id: UUID
    let imageName: String
    let name: String?
    let themeTitle: String?
    let tags: [String]?
}
