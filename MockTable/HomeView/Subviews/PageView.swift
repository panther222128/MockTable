//
//  PageView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/14/23.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        TabView {
            PageContent(imageName: "otter", title: "otter", subtitle: "otter")
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            PageContent(imageName: "otter", title: "otter", subtitle: "otter")
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            PageContent(imageName: "otter", title: "otter", subtitle: "otter")
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

struct PageContent: View {
    
    let imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
            Text(title)
            Text(subtitle)
        }
    }
    
}

#Preview {
    PageView()
}
