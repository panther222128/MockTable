//
//  RegionCategoryView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

struct RegionCategoryView: View {
    
    private let items: [RegionItem] = [.init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane"), .init(id: .init(), imageName: "airplane")]
    private let rows = [GridItem()]
    
    var body: some View {
        VStack {
            HStack {
                Text("어디로 가시나요?")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 12, bottom: 4, trailing: 0))
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 12) {
                    ForEach(items) { item in
                        Button(action: {
                            
                        }, label: {
                            Image("border")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.black)
                                .clipShape(Circle())
                                .frame(width: 50)
                        })
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
        }
    }
}

struct RegionItem: Identifiable {
    let id: UUID
    let imageName: String
}

#Preview {
    RegionCategoryView()
}
