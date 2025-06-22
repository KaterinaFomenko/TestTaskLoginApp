//
//  SignUpViewModel.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 22/06/2025.
//

import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var phone: String = ""
    @Published var position: String = ""
    @Published var isValidName: Bool = true
    @Published var isValidEmail: Bool = true
    @Published var isValidPhone: Bool = true
    @Published var isValidData: Bool = true // общий флаг
    
    // Методы для установки данных и проверки
    func setName(_ name: String) {
        self.name = name
        checkValidName()
    }
    
    func setEmail(_ email: String) {
        self.email = email
        checkValidEmail()
    }
    
    func setPhone(_ phone: String) {
        self.phone = phone
        checkValidPhone()
    }
    
    // Методы проверки
    func checkValidName() {
        isValidName = !name.isEmpty
    }
    
    func checkValidEmail() {
        isValidEmail = !email.isEmpty && email.isValidEmail
    }
    
    func checkValidPhone() {
        isValidPhone = !phone.isEmpty
    }
    
    func validateAll() {
        isValidName = !name.isEmpty
        isValidEmail = !email.isEmpty && email.isValidEmail
        isValidPhone = !phone.isEmpty
        isValidData = isValidName && isValidEmail && isValidPhone
    }
    
    
    
    
}
