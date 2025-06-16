//
//  TextFieldGroupe.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 14/06/2025.
//

import SwiftUI

struct TextFieldGroupe: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var phone: String
    @Binding var position: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            TextField("Your name", text: $name) {
            }
            .customTextFild()
            
            TextField("Email", text: $email){
            }
            .customTextFild()
            
            VStack(alignment: .leading) {
                TextField("Phone", text: $phone){
                }
                .customTextFild()
                Text("+38 (xxx) xxx-xx-xx")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .padding(.leading)
            }
        }
        .padding()
    }
}

#Preview("With Data") {
    
    TextFieldGroupe(name: .constant("Malcolm Bailey"),
                    email: .constant("jany_murazik@gmail.com"),
                    phone: .constant("+3(098) 111 11 11"),
                    position: .constant("Frontend")
                    )
}

#Preview("Empty Data") {
    
    TextFieldGroupe(name: .constant(""),
                    email: .constant(""),
                    phone: .constant(""),
                    position: .constant("")
                    )
}

