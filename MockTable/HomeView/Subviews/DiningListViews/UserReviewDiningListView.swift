//
//  UserReviewDiningList.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import Foundation

struct UserReviewDiningListView: DiningListView {
    var title: String? = "유저의 리얼리뷰 Pick"
    var subtitle: String? = "방문자들이 남긴 솔직한 리뷰를 만나보세요"
    var diningGroupName: String? = nil
    var items: [DiningListItem] = [.init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "스시 오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false, reservationOptions: nil)]
    var isSeeAllExists: Bool = false
    var isGuideBookSelected: Bool = false
    var isUserReviewDiningList: Bool = true
    var isDiningGroup: Bool = false
    var isTrailingSeeAllExists: Bool = true
    var isReservationPossible: Bool = false
}
