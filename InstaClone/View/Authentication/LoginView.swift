//
//  LoginView.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/29/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("instagram-logo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)
                    
                    // email field
                    VStack(spacing: 20) {
                        CustomTextField(text: $email, placeHolder: Text("Email"), imageName: "envelope")
                            
                        
                        // password field
                        CustomSecureField(text: $password, placeHolder: Text("Password"))
                    }
                    HStack {
                        Spacer()
                        // forgot password
                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                    }
                    
                    // sign in
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(.purple)
                            .clipShape(Capsule())
                            .padding()
                    })
                    
                    Spacer()
                    NavigationLink(destination: RegistrationView().navigationBarHidden(true), label: {
                        
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                    }).padding(.bottom, 16)
                }
                .padding(.top, -44)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
