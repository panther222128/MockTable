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
    
    private let items: [DiningGroup] = [.init(id: .init(), groupName: "스시산원"), .init(id: .init(), groupName: "오오모토"), .init(id: .init(), groupName: "리윤"), .init(id: .init(), groupName: "오마주"), .init(id: .init(), groupName: "밍글스"), .init(id: .init(), groupName: "라온"), .init(id: .init(), groupName: "초심"), .init(id: .init(), groupName: "오오키")]
    
    var body: some View {
        VStack {
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
