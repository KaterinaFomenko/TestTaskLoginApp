//
//  PositionList.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 14/06/2025.
//

import SwiftUI

enum Position: String, CaseIterable {
    case frontend = "Frontend developer"
    case backend = "Backend Developer"
    case designer = "Designer"
    case qa = "QA"
}

struct PositionList: View {
    @State private var selectedPosition: Position = .frontend
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Select your position")
                .font(.system(size: 25))
            
            ForEach(Position.allCases, id: \.self) { position in
                HStack(spacing: 30) {
                    
                    СustomCircleSelectState(isSelectedPosition: selectedPosition == position)
                    Text(position.rawValue)
                        .font(.system(size: 20))
                }
                .onTapGesture {
                    withAnimation {
                        selectedPosition = position
                    }
                    print("Select position is :\(selectedPosition)")
                }
            }
        }
    }
}

struct СustomCircleSelectState: View {
    
    var isSelectedPosition: Bool
    
    var body: some View {
        
        Circle()
            .frame(width: 20, height: 20)
            .foregroundStyle(isSelectedPosition ? .secondaryBlue : .grayMiddle)
        
            .overlay {
                Circle()
                    .frame(width: isSelectedPosition ? 10 : 15,
                           height: isSelectedPosition ? 10 : 15)
                    .foregroundStyle(.white)
            }
    }
}



#Preview {
    PositionList()
}
