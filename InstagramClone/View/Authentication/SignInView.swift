//
//  SignInView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI

struct SignInView: View {
    //MARK: PROPERTIES
    @State var email: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    //MARK: PROPERTIES
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 220, height: 220, alignment: .center)
                .foregroundColor(.primary)
            VStack(spacing: 0) {
                CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                    .padding()
                    .background()
                    .cornerRadius(10)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 32)
                CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                    .padding()
                    .background()
                    .cornerRadius(10)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 32)
            }
            HStack {
                Spacer()
                NavigationLink {
                    ForgotPasswordView(email: $email)
                } label: {
                    Text("Forgot Password")
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundColor(.secondary)
                        .padding()
                }
            }
            .frame(width: 360, height: 50)
            Button {
                viewModel.login(withEmail: email, password: password)
            } label: {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 50)
                    .background(.blue)
                    .clipShape(Capsule())
                    .padding()
            }
            Spacer()
        }//:VStack
    }
}

//MARK: PREVIEW
struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
