//
//  ContentView.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 12/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPressedTryAgain = false
    @State private var isShowUsersScreen = false
    
    var body: some View {
        ZStack {
            Color(.background)
                .ignoresSafeArea()
           
            VStack(alignment: .center, spacing: 20) {
                Image("noWiFi")
                Text("There is no internet connection")
                    .font(.custom(AppSize.font1, size: 16))
                Button {
                    isPressedTryAgain.toggle()
                    isShowUsersScreen = true
                    print("BTN pressed : ReLoad Enternet")
                } label: {
                    Text("Try again")
                        .font(.custom(AppSize.font1, size: 20))
                        .fontWeight(.regular)
                        .padding(.horizontal)
                        .padding()
                }
                .background(isPressedTryAgain ? Color(.pressed) : Color(.normal) )
                .cornerRadius(CGFloat(AppSize.radiusBTN))
                .tint(.black)
                
            }
            .sheet(isPresented: $isShowUsersScreen) {
                UsersTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
