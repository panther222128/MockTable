//
//  MyPageView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/19/23.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        HStack {
            Text("마이페이지")
            Spacer()
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "bell")
                        .foregroundStyle(.black)
                        .imageScale(.large)
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "gearshape")
                        .foregroundStyle(.black)
                        .imageScale(.large)
                }
            }
        }
        ScrollView(.vertical) {
            VStack {
                ProfileView()
                AddAnniversaryView()
                MyDiningSegmentedView()
            }
        }
    }
}

#Preview {
    MyPageView()
}
