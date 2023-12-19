//
//  MyDiningSegmentedView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/19/23.
//

import SwiftUI

struct MyDiningSegmentedView: View {
    
    @State var selectedIndex: Int = 0
    private let items: [MyDiningSegmentedCategory] = [.init(id: .init(), name: "나의 저장"), .init(id: .init(), name: "리뷰")]
    @Namespace var name
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(items) { item in
                    Button {
                        let selectedIndex = items.firstIndex(where: { $0.id == item.id })
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
        TabView(selection: $selectedIndex) {
            MyDiningCollectionView()
                .tag(0)
            MyReviewView()
                .tag(1)
        }
        .frame(height: 240)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        
    }
}

struct MyDiningSegmentedCategory: Identifiable {
    let id: UUID
    let name: String
}

#Preview {
    MyDiningSegmentedView()
}
