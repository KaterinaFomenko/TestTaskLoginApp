//
//  customTextField.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 14/06/2025.
//

import Foundation
import SwiftUI

struct TestTextField: View {
   @State private var testName = ""
    
    var body: some View {

            TextField("Your name", text: $testName)
            .customTextField(isValid: false)
                .padding(.horizontal)
            
        "Required field".customSubText(isValid: true)
    }
}

#Preview {
    TestTextField()
}

extension TextField {
    func customTextField(isValid: Bool) -> some View {
         self
            .padding()
            .foregroundColor(.black)
            .cornerRadius(AppSize.radiusTxtField)
            .overlay(
                RoundedRectangle(cornerRadius: AppSize.radiusTxtField)
                    .stroke(isValid ? .grayMiddle : .red, lineWidth: 2)
            )
    }
}

extension String {
    var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
}



extension String {
    func customSubText(isValid: Bool) -> some View {
        VStack {
            HStack {
                Text (self)
                    .foregroundColor(isValid ? .clear : .red)
                    .font(.footnote)
                    .padding(.leading)
                Spacer()
            }
        }
    }
}

