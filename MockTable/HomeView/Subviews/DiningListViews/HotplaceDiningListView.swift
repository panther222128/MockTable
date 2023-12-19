//
//  HotplaceDiningListView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import Foundation

struct HotplaceDiningListView: DiningListView {
    var title: String? = "웨이팅 핫플레이스 BEST"
    var subtitle: String? = "핫 한 웨이팅 라인업, 이제 Mock테이블에서!"
    var diningGroupName: String? = nil
    var items: [DiningListItem] = [.init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil)]
    var isSeeAllExists: Bool = true
    var isGuideBookSelected: Bool = false
    var isUserReviewDiningList: Bool = false
    var isDiningGroup: Bool = false
    var isTrailingSeeAllExists: Bool = true
    var isReservationPossible: Bool = false
}
