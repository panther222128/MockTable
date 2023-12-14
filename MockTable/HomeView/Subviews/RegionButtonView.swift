//
//  RegionButtonView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

struct RegionButtonView: View {
    
    @State var region: String = "전국"
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(systemName: "location.circle")
                .foregroundStyle(.black)
            Button(region) {
                
            }
            .foregroundStyle(.black)
        }
        .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 0))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
}

#Preview {
    RegionButtonView()
}
