//
//  HomeView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/13/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedPriceRangeBestSegmentedIndex: Int = 0
    @State private var searchText = ""
    private let priceRangeBestSegmentedTitles = ["First", "Second"]
    
    var body: some View {
        // MARK: - TabView indicator position
        VStack {
            SearchView(text: $searchText)
            RegionButtonView()
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    // MARK: - Next tab visible tabview
                    PageView()
                        .frame(height: 400)
                    DiningCategoryView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                }
                
                Rectangle()
                    .fill(Color.gray.opacity(0.25))
                    .frame(height: 8)
                
                VStack {
                    RegionCategoryView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    HotplaceDiningListView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    UserReviewDiningListView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    RecommendationDiningListView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    // MARL: Discount content text
                    DiscountDiningListView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    OnDiningListView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    GuidebookSelectedDiningListView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    TabView {
                        BannerItemView(color: .blue)
                        BannerItemView(color: .pink)
                    }
                    .frame(height: 100)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    DiningCategoryBestView()
                    PriceRangeBestSegmentedView()
                        .frame(height: 840)
                    // MARK: - 
                    ThemeBestCategoryView()
                }
            }
        }
    }
}

#Preview {
    HomeView(selectedPriceRangeBestSegmentedIndex: 0)
}
