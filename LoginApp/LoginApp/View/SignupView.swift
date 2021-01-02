//
//  SignupView.swift
//  LoginApp
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import SwiftUI

struct SignupView: View {
    
    // MARK: - Property
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var rePassword = ""
    
    @State var visible = false
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            VStack {
                
                // MARK: - User Name
                HStack (spacing: 15) {
                    Image(systemName: "person")
                    TextField("ユーザー名", text: $username)
                } //: HStack
                .padding(.vertical, 20)
                
                Divider()
                
                // MARK: - Email
                HStack (spacing: 15) {
                    Image(systemName: "envelope")
                    TextField("Eメール", text: $email)
                } //: HStack
                .padding(.vertical, 20)
                
                Divider()
                
                // MARK: - Password
                if visible {
                    HStack (spacing: 15) {
                        Image(systemName: "lock")
                        TextField("パスワード", text: $password)
                            .autocapitalization(.none)
                        Button(action: {
                            visible.toggle()
                        }, label: {
                            Image(systemName: "eye")
                                .foregroundColor(.black)
                        })
                    } //: HStack
                    .padding(.vertical, 20)
                } else {
                    HStack (spacing: 15) {
                        Image(systemName: "lock")
                        SecureField("パスワード", text: $password)
                        Button(action: {}, label: {
                            Image(systemName: "eye")
                                .foregroundColor(.black)
                        })
                    } //: HStack
                    .padding(.vertical, 20)
                }
                
                Divider()
                
                // MARK: - RePassword
                if visible {
                    HStack (spacing: 15) {
                        Image(systemName: "lock")
                        TextField("パスワード確認", text: $rePassword)
                            .autocapitalization(.none)
                        Button(action: {
                            visible.toggle()
                        }, label: {
                            Image(systemName: "eye.slash")
                                .foregroundColor(.black)
                        })
                    } //: HStack
                    .padding(.vertical, 20)
                } else {
                    HStack (spacing: 15) {
                        Image(systemName: "lock")
                        SecureField("パスワード確認", text: $rePassword)
                        Button(action: {
                            visible.toggle()
                        }, label: {
                            Image(systemName: "eye")
                                .foregroundColor(.black)
                        })
                    } //: HStack
                    .padding(.vertical, 20)
                }
                
            } //: VStack
            .padding(.horizontal, 16)
            .padding(.top, 10)
            .padding(.bottom, 60)
            .background(
                Color.white
                    .cornerRadius(10)
            )
            
            // MARK: - Login Button
            Button(action: {}, label: {
                Text("新規登録")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .semibold))
                    .frame(width: UIScreen.main.bounds.width - 100, height: 60)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("Color"), Color("Color1")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.3), radius: 8, x: 4, y: 4)
                    )
            })
            .offset(y: -50)
            .padding(.bottom, -50)
            
        } //: VStack
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
