//
//  DiningGroupListView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/18/23.
//

import Foundation

struct DiningGroupListView: DiningListView {
    var title: String? = nil
    var subtitle: String? = nil
    var diningGroupName: String?
    var items: [DiningListItem] = []
    var isSeeAllExists: Bool = true
    var isGuideBookSelected: Bool = false
    var isUserReviewDiningList: Bool = false
    var isDiningGroup: Bool = true
}
