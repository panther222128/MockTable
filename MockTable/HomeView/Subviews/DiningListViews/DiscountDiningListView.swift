//
//  DiscountDiningListView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import Foundation

struct DiscountDiningListView: DiningListView {
    var title: String = "놓치면 안되는 혜택 가득!"
    var subtitle: String = "미식생활을 더욱 스마트하게 즐겨보세요"
    var items: [DiningListItem] = [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, isBookmarked: false, isGuideSelected: false),
                                   .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, isBookmarked: false, isGuideSelected: false),
                                   .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, isBookmarked: false, isGuideSelected: false)]
    var isSeeAllExists: Bool = true
    var isGuideBookSelected: Bool = false
    var isUserReviewDiningList: Bool = false
}
