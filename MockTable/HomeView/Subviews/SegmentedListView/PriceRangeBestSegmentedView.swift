//
//  PriceRangeBestSegmentedView.swift
//  MockTable
//
//  Created by Horus on 12/16/23.
//

import SwiftUI

struct PriceRangeBestSegmentedView: View {
    
    @State private var selectedIndex: Int = 0
    @Namespace var name
    
    private let priceRangeItems: [PriceRange] = [.init(id: .init(), name: "3만원 이하"), .init(id: .init(), name: "3-5만원"), .init(id: .init(), name: "5-10만원"), .init(id: .init(), name: "10만원 이상")]
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(priceRangeItems) { item in
                    Button {
                        let selectedIndex = priceRangeItems.firstIndex(where: { $0.id == item.id })
                        self.selectedIndex = selectedIndex ?? 0
                    } label: {
                        VStack {
                            Text(item.name)
                                .foregroundStyle(Color.black)
                                .fontWeight(.medium)
                            ZStack {
                                Capsule()
                                    .fill(Color.clear)
                                    .frame(height: 4)
                                let selectedIndex = priceRangeItems.firstIndex(where: { $0.id == item.id })
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
            TabView(selection: $selectedIndex) {
                ThreeLessListView(selectedIndex: selectedIndex, items: [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false)])
                    .listStyle(PlainListStyle())
                    .scrollDisabled(true)
                    .tag(0)
                ThreeToFiveListView(selectedIndex: selectedIndex, items: [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false)])
                    .listStyle(PlainListStyle())
                    .scrollDisabled(true)
                    .tag(1)
                FiveToTenListView(selectedIndex: selectedIndex, items: [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false)])
                    .listStyle(PlainListStyle())
                    .scrollDisabled(true)
                    .tag(2)
                TenMoreListView(selectedIndex: selectedIndex, items: [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false)])
                    .listStyle(PlainListStyle())
                    .scrollDisabled(true)
                    .tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        }
    }
    
}

#Preview {
    PriceRangeBestSegmentedView()
}

struct PriceRange: Identifiable {
    let id: UUID
    let name: String
}
