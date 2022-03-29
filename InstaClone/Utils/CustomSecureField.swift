//
//  CustomSecureField.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/29/22.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeHolder: Text
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeHolder
                    .foregroundColor(Color.init(white: 1, opacity: 0.8))
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                SecureField("", text: $text)
            }
        }
        .padding()
        .background(Color.init(white: 1, opacity: 0.15))
        .cornerRadius(10)
        .foregroundColor(.white)
        .padding(.horizontal, 32)
    }
}
