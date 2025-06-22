//
//  SignUpScreen.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 13/06/2025.
//

import SwiftUI

struct SignUpScreen: View {

    @StateObject var signUpViewModel = SignUpViewModel()
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 20) {
                GetRequestView(requestType: .post)
                
                TextFieldGroupeView(name: $signUpViewModel.name,
                                    email:  $signUpViewModel.email,
                                    phone:  $signUpViewModel.phone,
                                    position:  $signUpViewModel.position,
                                    isValidName:  $signUpViewModel.isValidName,
                                    isValidEmail: $signUpViewModel.isValidEmail,
                                    isValidPhone: $signUpViewModel.isValidPhone
                                  )
                
                .submitLabel(.done)
                .onSubmit {
                    print("Submitted name: \(signUpViewModel.name)")
                    print("Submitted email: \(signUpViewModel.email)")
                    print("Submitted phone: \(signUpViewModel.phone)")
                }
                
                .onChange(of: signUpViewModel.name) { oldValue, newValue in
                    signUpViewModel.setName(newValue)
                }
                .onChange(of: signUpViewModel.email) { oldValue, newValue in
                    signUpViewModel.setEmail(newValue)
                }
                .onChange(of: signUpViewModel.phone) { oldValue, newValue in
                    signUpViewModel.setPhone(newValue)
                }
            }
            
            HStack {
                PositionListView()
                    .padding(20)
                Spacer()
                
            }
            LoadFotoView()
        }
    }
}

#Preview {
    SignUpScreen()
}
