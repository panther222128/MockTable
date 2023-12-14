//
//  BannerItemView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

struct BannerItemView: View {
    
    let color: Color
    
    var body: some View {
        Rectangle()
            .foregroundStyle(color)
    }
    
}

#Preview {
    BannerItemView(color: .blue)
}
