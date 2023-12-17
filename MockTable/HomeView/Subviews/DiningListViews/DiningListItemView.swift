//
//  DiningListItemView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

struct DiningListItemView: View {
    
    let item: DiningListItem
    let isGuideSelected: Bool
    let isUserReviewDiningList: Bool
    
    var body: some View {
        VStack {
            if isUserReviewDiningList {
                HStack {
                    Image(systemName: "person.circle")
                    Text("User")
                    Spacer()
                    VStack {
                        Text("최근 방문일")
                        Text("2023.10.27")
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
            }
            if isUserReviewDiningList {
                ZStack {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFit()
                    HStack {
                        Text("Review")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                }
            } else {
                if !isUserReviewDiningList {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFit()
                } else {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                }
            }
            if isGuideSelected {
                HStack {
                    Image(systemName: "light.min")
                    Text("2023 가이드북 선정")
                        .font(.system(size: 12))
                    Spacer()
                }
            }
            HStack {
                VStack {
                    HStack {
                        if let grade = item.grade {
                            HStack {
                                Image(systemName: "star")
                            }
                            Text(String(grade))
                        }
                        VStack {
                            
                            HStack {
                                Text(item.name)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            HStack {
                                Text(item.diningCategory + " - " + item.location)
                                    .font(.system(size: 12))
                                Spacer()
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                        if !item.isBookmarked {
                            Image(systemName: "bookmark")
                        } else {
                            Image(systemName: "bookmark.fill")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    DiningListItemView(item: .init(id: .init(), name: "name", diningCategory: "category", location: "location", imageName: "homage", grade: nil, reviewCount: nil, isBookmarked: true, isGuideSelected: true), isGuideSelected: true, isUserReviewDiningList: true)
}
