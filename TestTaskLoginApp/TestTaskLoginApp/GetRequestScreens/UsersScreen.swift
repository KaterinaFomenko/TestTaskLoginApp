//
//  UsersScreen.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 13/06/2025.
//

import SwiftUI

struct UsersScreen: View {
    
    var body: some View {
        
        VStack (alignment: .center) {
            ZStack {
                Color.primaryYellow
                    .frame(height: 60)
                Text("Working with GET request")
                    .font(.custom(AppSize.font1, size: 25))
                    .padding()
            }
        }
        
        
        
    }
}

#Preview {
    UsersScreen()
}
