//
//  SegmentedListItemView.swift
//  MockTable
//
//  Created by Horus on 12/16/23.
//

import SwiftUI

struct SegmentedListItemView: View {
    let item: DiningListItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            VStack {
                Text(item.name)
                Text(item.imageName)
                HStack {
                    if let grade = item.grade, let reviewCount = item.reviewCount {
                        Image(systemName: "star")
                        HStack {
                            Text(String(grade))
                            Text("(\(reviewCount))")
                        }
                    }
                    HStack {
                        Text(item.diningCategory + " - " + item.location)
                    }
                }
            }
        }
    }
}

#Preview {
    SegmentedListItemView(item: .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: nil, isBookmarked: false, isGuideSelected: false))
}
