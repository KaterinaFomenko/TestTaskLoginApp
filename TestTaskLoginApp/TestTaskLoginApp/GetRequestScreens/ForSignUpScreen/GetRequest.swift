//
//  GetRequest.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 14/06/2025.
//

import SwiftUI

enum GetPost: String {
    case get = "GET"
    case post = "POST"
}

struct GetRequest: View {
    let requestType: GetPost
    var body: some View {
        VStack (alignment: .center) {
            ZStack {
                Color.primaryYellow
                    .frame(height: 80)
                Text("Working with \(requestType.rawValue) request")
                    .font(.custom(AppSize.font1, size: 25))
                    .padding()
            }
        }
    }
}

#Preview {
    GetRequest(requestType: .get)
}
