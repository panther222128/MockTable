//
//  DiningListView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

protocol DiningListView: View {
    var title: String? { get }
    var subtitle: String? { get }
    var diningGroupName: String? { get }
    var items: [DiningListItem] { get }
    var isSeeAllExists: Bool { get }
    var isGuideBookSelected: Bool { get }
    var isUserReviewDiningList: Bool { get }
    var isDiningGroup: Bool { get }
    var isTrailingSeeAllExists: Bool { get }
    var isReservationPossible: Bool { get }
}

extension DiningListView {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        if let title = title {
                            Text(title)
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                        }
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 0, leading: 12, bottom: 1, trailing: 0))
                    HStack {
                        Text(subtitle ?? "")
                            .font(.system(size: 16))
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 0, leading: 12, bottom: 4, trailing: 0))
                }
                Button {
                    
                } label: {
                    if isTrailingSeeAllExists {
                        HStack {
                            Text("전체보기")
                                .foregroundStyle(Color.black)
                            Image(systemName: "arrow.right")
                                .foregroundStyle(.black)
                        }
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 12))
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible(), spacing: 16)], spacing: 16) {
                    if isDiningGroup {
                        Text(diningGroupName ?? "")
                    }
                    ForEach(items) { item in
                        if !isUserReviewDiningList {
                            DiningListItemView(item: item, isGuideSelected: isGuideBookSelected, isUserReviewDiningList: false)
                        } else {
                            DiningListItemView(item: item, isGuideSelected: isGuideBookSelected, isUserReviewDiningList: true)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 18)
                                        .stroke(Color.gray.opacity(0.25), lineWidth: 1)
                                )
                        }
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image(systemName: "arrow.right")
                                .foregroundStyle(Color.black)
                            Text("전체보기")
                                .foregroundStyle(Color.black)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24))
                }
                .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0))
                .frame(height: 320)
            }
        }
    }
}

#Preview {
    HotplaceDiningListView()
}

struct DiningListItem: Identifiable {
    let id: UUID
    let name: String
    let diningCategory: String
    let location: String
    let imageName: String
    let grade: Float?
    let reviewCount: Int?
    let isBookmarked: Bool
    let isGuideSelected: Bool
    let reservationOptions: [ReservationOption]?
}

struct ReservationOption: Identifiable {
    let id: UUID
    let option: String
}
