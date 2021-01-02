//
//  ToggleButton.swift
//  LoginApp
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import SwiftUI

struct ToggleButton: View {
    
    // MARK: - Property
    
    var buttonWidth = (UIScreen.main.bounds.width - 50) / 2
    
    @Binding var selected: Int
    var index: Int
    
    var animate: Namespace.ID
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Heightlight Back
            if selected == index {
                Color.white
                    .frame(width: buttonWidth, height: 50)
                    .clipShape(Capsule())
                    .matchedGeometryEffect(id: "whiteBack", in: animate)
            } //: if
            
            // MARK: - Button
            Button(action: {
                withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                    selected = index
                }
            }, label: {
                Text(index == 0 ? "ログイン" : "新規登録")
                    .foregroundColor(selected == index ? .black : .white)
                    .padding(.vertical, 10)
                    .frame(width: buttonWidth, height: 50)
            }) //: Button
        } //: ZStack
    }
}

struct ToggleButton_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
