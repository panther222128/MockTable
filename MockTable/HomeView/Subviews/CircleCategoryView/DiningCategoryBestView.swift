//
//  DiningCategoryBestView.swift
//  MockTable
//
//  Created by Horus on 12/16/23.
//

import SwiftUI

struct DiningCategoryBestView: CircleCategoryView {
    var title = "음식종류별 BEST"
    var items: [CategoryItem] = [.init(id: .init(), imageName: "border", name: "스시 오마카세", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "한우 오마카세", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "다이닝바", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "소고기 구이", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "스테이크", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "한식", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "이탈리안", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "파스타", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "일식", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "프렌치", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "브런치", themeTitle: nil, tags: nil), .init(id: .init(), imageName: "border", name: "중식", themeTitle: nil, tags: nil)]
    var rows = [GridItem()]
    var imageWidth: CGFloat = 75
    var isThemeBestCategory: Bool = false
}

#Preview {
    DiningCategoryBestView()
}
