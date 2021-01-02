//
//  SnsButton.swift
//  LoginApp
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import SwiftUI

struct SnsButton: View {
    
    // MARK: - Property
    
    var imageName: String
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {}, label: {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(12)
                .background(
                    Color.white
                        .clipShape(Circle())
                )
        })
    }
}

struct SnsButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
