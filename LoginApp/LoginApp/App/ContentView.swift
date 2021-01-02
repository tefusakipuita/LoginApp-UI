//
//  ContentView.swift
//  LoginApp
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    @State var selected = 0
    
    @Namespace var animation
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            LinearGradient(gradient: Gradient(colors: [Color("Color"), Color("Color1")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                // MARK: - Logo
                AnimatedImage(name: "psy.gif")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 100)
                    .scaleEffect(1.8)
                    .padding(.top, 30)
                    .padding(.bottom, 40)
                
                // MARK: - Toggle
                HStack (spacing: 12) {
                    ToggleButton(selected: $selected, index: 0, animate: animation)
                    ToggleButton(selected: $selected, index: 1, animate: animation)
                } //: HStack
                .background(
                    Color.black.opacity(0.3)
                        .clipShape(Capsule())
                )
                .padding(.bottom, 15)
                
                // MARK: - TextField
                if selected == 0 {
                    LoginView()
                        .padding(.horizontal, 15)
                } else {
                    SignupView()
                        .padding(.horizontal, 15)
                }
                
                
                // MARK: - or
                HStack {
                    Color.white
                        .frame(width: 90, height: 1)
                    Text("or")
                        .foregroundColor(.white)
                    Color.white
                        .frame(width: 90, height: 1)
                } //: HStack
                .padding(.top, 35)
                
                // MARK: - SNSButton
                HStack (spacing: 30) {
                     SnsButton(imageName: "twitter")
                    SnsButton(imageName: "google")
                    SnsButton(imageName: "fb")
                } //: HStack
                .padding(.top, 10)
                
                Spacer()
            } //: VStack
        } //: ZStack
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
