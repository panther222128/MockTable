//
//  RecommendationDiningListView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import Foundation

struct RecommendationDiningListView: DiningListView {
    var title: String? = "사용자님이 좋아할 매장"
    var subtitle: String? = "마음에 들 만한 곳을 모아봤어요"
    var diningGroupName: String? = nil
    var items: [DiningListItem] = [.init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false)]
    var isSeeAllExists: Bool = true
    var isGuideBookSelected: Bool = false
    var isUserReviewDiningList: Bool = false
    var isDiningGroup: Bool = false
}
