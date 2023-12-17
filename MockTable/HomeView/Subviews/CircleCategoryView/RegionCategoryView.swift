//
//  RegionCategoryView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

struct RegionCategoryView: CircleCategoryView {
    var title = "어디로 가시나요?"
    var items: [CategoryItem] = [.init(id: .init(), imageName: "border", name: nil, themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: nil, themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: nil, themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: nil, themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: nil, themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: nil, themeTitle: nil, tags: nil)]
    var rows = [GridItem()]
    var imageWidth: CGFloat = 50
    var isThemeBestCategory: Bool = false
}

#Preview {
    RegionCategoryView()
}
