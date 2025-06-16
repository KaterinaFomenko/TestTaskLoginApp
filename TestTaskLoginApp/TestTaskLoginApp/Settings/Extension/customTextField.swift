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
        TextField("Enter name", text: $testName)
            .customTextFild()
            .padding()
    }
}

#Preview {
    TestTextField()
}

extension TextField {
    func customTextFild() -> some View {
        self
            .padding(.vertical, 20) // Внутренние вертикальные отступы
        
            .padding(.horizontal, 20)
            .foregroundColor(.black)
           // .background(Color.gray)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.grayMiddle, lineWidth: 2)
            )
    }
}
