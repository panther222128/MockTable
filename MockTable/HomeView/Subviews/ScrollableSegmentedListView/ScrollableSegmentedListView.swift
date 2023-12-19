//
//  ScrollableSegmentedListView.swift
//  MockTable
//
//  Created by Horus on 12/17/23.
//

import SwiftUI

struct ScrollableSegmentedListView: View {
    
    @State private var selectedIndex: Int = 0
    @Namespace var name
    
    private let title: String = "브랜드관"
    private let items: [DiningGroup] = [.init(id: .init(), groupName: "스시산원"), .init(id: .init(), groupName: "오오모토"), .init(id: .init(), groupName: "리윤"), .init(id: .init(), groupName: "오마주"), .init(id: .init(), groupName: "밍글스"), .init(id: .init(), groupName: "라온"), .init(id: .init(), groupName: "초심"), .init(id: .init(), groupName: "오오키")]
    private let diningGroupItems: [[DiningListItem]] = [[.init(id: .init(), name: "스시산원", diningCategory: "오마카세", location: "선릉", imageName: "homage", grade: 4.6, reviewCount: 479, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시산원 궁", diningCategory: "오마카세", location: "광화문", imageName: "homage", grade: 4.6, reviewCount: 414, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시산원 반주헌", diningCategory: "오마카세", location: "강남", imageName: "homage", grade: 4.5, reviewCount: 372, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시산원 청", diningCategory: "오마카세", location: "역삼", imageName: "homage", grade: 4.6, reviewCount: 726, isBookmarked: false, isGuideSelected: false, reservationOptions: nil)], [.init(id: .init(), name: "스시다원", diningCategory: "오마카세", location: "잠실", imageName: "homage", grade: 4.7, reviewCount: 1145, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오오모토", diningCategory: "오마카세", location: "성수", imageName: "homage", grade: 4.7, reviewCount: 2768, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시다온", diningCategory: "오마카세", location: "석계", imageName: "homage", grade: 4.7, reviewCount: 3673, isBookmarked: false, isGuideSelected: false, reservationOptions: nil)], [], [], [], [], [], []]
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(items) { item in
                        Button {
                            let selectedIndex = items.firstIndex(where: { $0.id == item.id })
                            self.selectedIndex = selectedIndex ?? 0
                        } label: {
                            VStack {
                                Text(item.groupName)
                                    .foregroundStyle(Color.black)
                                    .fontWeight(.medium)
                                    .frame(width: 80)
                                ZStack {
                                    Capsule()
                                        .fill(Color.clear)
                                        .frame(height: 4)
                                    let selectedIndex = items.firstIndex(where: { $0.id == item.id })
                                    if self.selectedIndex == selectedIndex {
                                        Capsule()
                                            .fill(Color.black)
                                            .frame(height: 4)
                                            .matchedGeometryEffect(id: "Tab", in: name)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            DiningGroupListView(diningGroupName: items[selectedIndex].groupName, items: diningGroupItems[selectedIndex])
        }
    }
}

struct DiningGroup: Identifiable {
    let id: UUID
    let groupName: String
}

#Preview {
    ScrollableSegmentedListView()
}
