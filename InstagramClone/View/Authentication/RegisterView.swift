//
//  RegisterView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI

struct RegisterView: View {
    //MARK: PROPERTIES
    @State var email: String = ""
    @State var username: String = ""
    @State var fullname: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 200, height: 100, alignment: .center)
                    .foregroundColor(.primary)
                VStack(spacing: 0) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background()
                        .cornerRadius(10)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 32)
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background()
                        .cornerRadius(10)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 32)
                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person.circle")
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
                    CustomSecureField(text: $confirmPassword, placeholder: Text("Confirm Password"), imageName: "lock")
                        .padding()
                        .background()
                        .cornerRadius(10)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 32)
                }
                Button {
                    viewModel.register(withEmail: email, password: password, username: username, fullname: fullname)
                } label: {
                    Text("Register")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                Spacer()
                NavigationLink {
                    SignInView()
                } label: {
                    HStack {
                        Text("Don't have an account?")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.primary)
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }//:HStack
                    .frame(width: 360, height: 50)
                }
            }//:VStack
        }//:Navigation View
    }
}

//MARK: PREVIEW
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
