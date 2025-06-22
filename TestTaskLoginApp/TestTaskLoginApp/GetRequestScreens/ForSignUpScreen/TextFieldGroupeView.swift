//
//  TextFieldGroupeView.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 14/06/2025.
//

import SwiftUI

struct TextFieldGroupeView: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var phone: String
    @Binding var position: String
    @Binding var isValidName: Bool
    @Binding var isValidEmail: Bool
    @Binding var isValidPhone: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            VStack(spacing: 5) {
                TextField("Your name", text: $name, axis: .horizontal)
                    .customTextField(isValid: isValidName)

                "Required field".customSubText(isValid: isValidName)
            }
            
            VStack(spacing: 5) {
                TextField("Email", text: $email)
                .customTextField(isValid: isValidEmail)
                .textContentType(.emailAddress)
                .disableAutocorrection(true)
                .textInputAutocapitalization(.never)
                .foregroundColor(email.isValidEmail ? .green : .red)

                "Invalid email format".customSubText(isValid: isValidEmail)
            }
           
            
            VStack(spacing: 5) {
                TextField("Phone", text: $phone)
                .customTextField(isValid: isValidPhone)

                if isValidPhone {
                    "+38 (xxx) xxx-xx-xx".customSubText(isValid: isValidPhone)
                } else {
                    "Required field".customSubText(isValid: isValidPhone)
                }
                
            }
           
        }
        .padding(.horizontal)
    }
}

#Preview("With Data") {
    
    TextFieldGroupeView(name: .constant("Malcolm Bailey"),
                        email: .constant("jany_murazik@gmail.com"),
                        phone: .constant("+3(098) 111 11 11"),
                        position: .constant("Frontend"),
                        isValidName: .constant(true),
                        isValidEmail: .constant(true),
                        isValidPhone: .constant(true)
    )
}

#Preview("Empty Data") {
    
    TextFieldGroupeView(name: .constant(""),
                        email: .constant(""),
                        phone: .constant(""),
                        position: .constant(""),
                        isValidName: .constant(false),
                        isValidEmail: .constant(false),
                        isValidPhone: .constant(false)
    )
}

