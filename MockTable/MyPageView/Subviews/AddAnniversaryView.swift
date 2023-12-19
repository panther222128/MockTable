//
//  AddAnniversaryView.swift
//  MockTable
//
//  Created by Jun Ho JANG on 12/19/23.
//

import SwiftUI

struct AddAnniversaryView: View {
    var body: some View {
        HStack {
            Image(systemName: "birthday.cake")
            VStack {
                HStack {
                    Text("Mock테이블이 특별한 날을 축하해드릴게요")
                    Spacer()
                }
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("생일/기념일 등록하기 >")
                        Spacer()
                    })
                    .foregroundStyle(Color.black)
                    Spacer()
                }
            }
        }
        .frame(height: 100)
        .background(Color.gray.opacity(0.3))

    }
}

#Preview {
    AddAnniversaryView()
}
