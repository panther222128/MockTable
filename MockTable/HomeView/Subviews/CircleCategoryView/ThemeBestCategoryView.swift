//
//  ThemeBestCategoryView.swift
//  MockTable
//
//  Created by Horus on 12/17/23.
//

import SwiftUI

struct ThemeBestCategoryView: CircleCategoryView {
    var title = "음식종류별 BEST"
    var items: [CategoryItem] = [.init(id: .init(), imageName: "border", name: nil, themeTitle: "인플루언서 셰프 특집", tags: ["#핫플레이스 추천"]), .init(id: .init(), imageName: "border", name: nil, themeTitle: "뷰가 좋은", tags: ["#시티뷰", "#테라스", "#루프탑"]), .init(id: .init(), imageName: "border", name: nil, themeTitle: "블랙 레스토랑", tags: ["#모던", "#시크", "#블랙"]), .init(id: .init(), imageName: "border", name: nil, themeTitle: "불멍&물멍 스팟", tags: ["#힐링미식스팟"]), .init(id: .init(), imageName: "border", name: nil, themeTitle: "즐거운 비건 생활", tags: ["#비건", "베지테리언"]), .init(id: .init(), imageName: "border", name: nil, themeTitle: "룸이 있는", tags: ["#명품 레스토랑&카페"])]
    var rows = [GridItem()]
    var imageWidth: CGFloat = 100
    var isThemeBestCategory: Bool = true
}

#Preview {
    ThemeBestCategoryView()
}
