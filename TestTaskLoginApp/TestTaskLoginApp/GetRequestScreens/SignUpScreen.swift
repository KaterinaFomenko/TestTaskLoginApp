//
//  SignUpScreen.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 13/06/2025.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State var name = ""
    @State var email = ""
    @State var phone = ""
    @State var position = ""
    
    var body: some View {
        VStack (alignment: .center, spacing: 20) {
            GetRequestView(requestType: .post)
            
            TextFieldGroupeView(name: $name,
                            email: $email,
                            phone: $phone,
                            position: $position)
        }
        
        HStack {
            PositionListView()
                .padding(20)
            Spacer()
            
        }
        LoadFotoView()
    }
}

#Preview {
    SignUpScreen()
}
