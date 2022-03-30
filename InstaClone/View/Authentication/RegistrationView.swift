//
//  RegistrationView.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/29/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @Environment(\.presentationMode) var mode
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State private var imagePickerPresented = false
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack {
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
                            .padding(.top, 44)
                    } else {
                        Button(action: {
                            imagePickerPresented.toggle()
                        }, label: {
                            Image("plus-photo")
                                .resizable()
                                .renderingMode(.template)
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .foregroundColor(.white)
                        }).sheet(isPresented: $imagePickerPresented, onDismiss: loadImage) {
                            ImagePicker(image: $selectedImage)}
                    }
                }
                
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeHolder: Text("Email"), imageName: "envelope")
                    
                    CustomTextField(text: $userName, placeHolder: Text("Username"), imageName: "person")
                    
                    CustomTextField(text: $fullName, placeHolder: Text("Full Name"), imageName: "person")
                    
                    CustomSecureField(text: $password, placeHolder: Text("Password"))
                }
                Button(action: {
                    viewModel.register(withEmail: email, password: password, image: selectedImage, fullname: fullName, username: userName)
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(.purple)
                        .clipShape(Capsule())
                        .padding()
                })
                
                Spacer()
                
                
                Button(action: {
                    mode.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                })
                
            }
        }
    }
}
extension RegistrationView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
