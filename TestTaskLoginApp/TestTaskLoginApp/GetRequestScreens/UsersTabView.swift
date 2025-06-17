//
//  UsersTabView.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 13/06/2025.
//

import SwiftUI

struct UsersTabView: View {
    @State private var isShowFullScreen = false
    
    var body: some View {
        TabView {
            Tab("Users",
                systemImage: "person.3.sequence.fill") {
                UsersScreen()
            }
                
            Tab("Sign up",
                 systemImage: "person.crop.circle.fill.badge.plus") {
                
                SignUpScreen()
                    
            }
        }
        .fullScreenCover(isPresented: $isShowFullScreen, content: {
            
        })
        
        .onAppear() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .grayLight
            appearance.stackedLayoutAppearance.selected.iconColor = .secondaryBlue
            appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor:  UIColor.secondaryBlue]
            appearance.stackedLayoutAppearance.normal.iconColor = .grayDark.withAlphaComponent(1)
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor:  UIColor.grayDark.withAlphaComponent(1)]
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}



#Preview {
    UsersTabView()
}
