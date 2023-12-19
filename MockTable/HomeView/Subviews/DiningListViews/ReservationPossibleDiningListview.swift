//
//  ReservationPossibleDIningListview.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/19/23.
//

import Foundation

struct ReservationPossibleDiningListview: DiningListView {
    var title: String? = "즉시 예약이 가능한 레스토랑"
    var subtitle: String? = nil
    var diningGroupName: String? = nil
    var items: [DiningListItem] = [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: [.init(id: .init(), option: "오후 1:00"), .init(id: .init(), option: "오후 6:00"), .init(id: .init(), option: "오후 8:00")]),
                                   .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: [.init(id: .init(), option: "오후 1:00"), .init(id: .init(), option: "오후 6:00"), .init(id: .init(), option: "오후 8:00")]),
                                   .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: [.init(id: .init(), option: "오후 1:00"), .init(id: .init(), option: "오후 6:00"), .init(id: .init(), option: "오후 8:00")])]
    var isSeeAllExists: Bool = true
    var isGuideBookSelected: Bool = false
    var isUserReviewDiningList: Bool = false
    var isDiningGroup: Bool = false
    var isTrailingSeeAllExists: Bool = true
    var isReservationPossible: Bool = true
}
