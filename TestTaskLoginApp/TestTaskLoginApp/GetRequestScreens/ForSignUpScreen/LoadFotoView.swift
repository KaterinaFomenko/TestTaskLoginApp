//
//  LoadFotoView.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 17/06/2025.
//

import SwiftUI

struct LoadFotoView: View {
    @State private var isPressedSigntUp = false
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Text("Upload your photo")
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Button("Upload") {
                    print("Pressed Upload BTN")
                }
                .foregroundStyle(.secondaryBlue)
            }
            .font(.system(size: 20))
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .stroke(Color(.grayMiddle), lineWidth: 2)
                    .frame(height: 70)
            )
            .padding(.horizontal, 20)
            
            Button {
                print(print("Pressed Sign up BTN"))
                isPressedSigntUp.toggle()
            } label: {
                Text("Sign up")
                    .font(.custom(AppSize.font1, size: 20))
                    .foregroundStyle(isPressedSigntUp ? Color(.black) : Color(.darkGray) )
                    .fontWeight(.regular)
                    .padding(.horizontal, 20)
                    .padding()
            }
            .background(isPressedSigntUp ? Color(.normal) : Color(.grayLight) )
            .cornerRadius(CGFloat(AppSize.radiusBTN))
        }
    }
}

#Preview {
    LoadFotoView()
}
