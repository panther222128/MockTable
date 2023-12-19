//
//  ProfileView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/19/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Image("border")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                VStack {
                    Text("username")
                    HStack {
                        Text("팔로잉 0")
                        Text("|")
                        Text("팔로워 0")
                    }
                }
                Spacer()
            }
            Button(action: {
                
            }, label: {
                Text("프로필 수정")
            })
            .foregroundStyle(Color.black)
            .background(Color.clear)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 1)
            )
        }
    }
}

#Preview {
    ProfileView()
}
