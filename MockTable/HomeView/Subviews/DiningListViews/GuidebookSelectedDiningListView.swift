//
//  GuidebookSelectedDiningListView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import Foundation

struct GuidebookSelectedDiningListView: DiningListView {
    var title: String? = "가이드북 선정 레스토랑"
    var subtitle: String? = "명성에 걸맞은 감동을 맛보세요"
    var diningGroupName: String? = nil
    var items: [DiningListItem] = [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil),
                                   .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil),
                                   .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil)]
    var isSeeAllExists: Bool = true
    var isGuideBookSelected: Bool = true
    var isUserReviewDiningList: Bool = false
    var isDiningGroup: Bool = false
    var isTrailingSeeAllExists: Bool = true
    var isReservationPossible: Bool = false
}
