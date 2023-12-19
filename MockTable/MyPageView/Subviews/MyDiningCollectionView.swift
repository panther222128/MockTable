//
//  MyDiningCollectionView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/19/23.
//

import SwiftUI

struct MyDiningCollectionView: View {
    
    private var collections: [MyCollection] = []
    private let savedDining: [DiningListItem] = []
    private var items: [DiningListItem] = [.init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil), .init(id: .init(), name: "스시오마주", diningCategory: "오마카세", location: "신사동", imageName: "homage", grade: 5.0, reviewCount: 982, isBookmarked: false, isGuideSelected: false, reservationOptions: nil)]
    
    var body: some View {
        VStack {
            HStack  {
                Text("컬렉션 \(collections.count)")
                Spacer()
            }
            if collections.isEmpty {
                Button(action: {
                    
                }, label: {
                    Text("+ 새 컬렉션 만들기")
                        .foregroundStyle(Color.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 1)
                        )
                })
            } else {
                
            }
            HStack  {
                VStack {
                    HStack {
                        Text("저장한 레스토랑 \(savedDining.count)")
                        Spacer()
                    }
                    if savedDining.isEmpty {
                        VStack {
                            Text("저장한 레스토랑이 없습니다.")
                            Text("요즘 많이 저장하는 레스토랑을 확인해보세요.")
                        }
                    } else {
                        
                    }
                }
            }
        }
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem()]) {
                ForEach(items) { item in
                    VStack {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Rectangle())
                            .frame(width: 100)
                        
                        Text(item.name)
                            .fontWeight(.medium)
                        Text(item.diningCategory + "-" + item.location)
                        HStack {
                            Image(systemName: "star.fill")
                            if let grade = item.grade {
                                Text(String(grade))
                            }
                            if let reviewCount = item.reviewCount {
                                Text("(\(reviewCount))")
                            }
                        }
                    }
                }
            }
        }
    }
}

struct MyCollection: Identifiable {
    let id: UUID
    let name: String
}

#Preview {
    MyDiningCollectionView()
}
