//
//  ForgotPasswordView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI

struct ForgotPasswordView: View {
    //MARK: PROPERTIES
    @Binding var email: String
    
    //MARK: BODY
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 220, height: 220, alignment: .center)
                .foregroundColor(.primary)
            CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                .padding()
                .background()
                .cornerRadius(10)
                .foregroundColor(.secondary)
                .padding(.horizontal, 32)
                .disabled(true)
            Button {
                
            } label: {
                Text("Reset Password")
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
struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(email: Binding.constant("email"))
    }
}
