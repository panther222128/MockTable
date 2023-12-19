//
//  SegmentListView.swift
//  MockTable
//
//  Created by Horus on 12/16/23.
//

import SwiftUI

protocol SegmentListView: View {
    var selectedIndex: Int { get }
    var buttonTitle: String { get }
    var items: [DiningListItem] { get }
}

extension SegmentListView {
    var body: some View {
        VStack {
            List() {
                ForEach(items, id: \.id) { item in
                    SegmentedListItemView(item: item)
                }
            }
            Button {
                
            } label: {
                Text(buttonTitle)
                    .foregroundStyle(Color.black)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2.0)
                    )
            }
            
        }
    }
}

struct ThreeLessListView: SegmentListView {
    @State var selectedIndex: Int
    var buttonTitle: String = "3만원 이하 레스토랑 전체보기"
    var items: [DiningListItem]
}

struct ThreeToFiveListView: SegmentListView {
    @State var selectedIndex: Int
    var buttonTitle: String = "3-5만원 레스토랑 전체보기"
    var items: [DiningListItem]
}

struct FiveToTenListView: SegmentListView {
    @State var selectedIndex: Int
    var buttonTitle: String = "5-10만원 레스토랑 전체보기"
    var items: [DiningListItem]
}

struct TenMoreListView: SegmentListView {
    @State var selectedIndex: Int
    var buttonTitle: String = "10만원 이상 레스토랑 전체보기"
    var items: [DiningListItem]
}

#Preview {
    ThreeLessListView(selectedIndex: 0, items: [.init(id: .init(), name: "", diningCategory: "", location: "", imageName: "", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil)])
}
