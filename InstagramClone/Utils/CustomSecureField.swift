//
//  CustomSecureField.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI

struct CustomSecureField: View {
    //MARK: PROPERTIES
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    //MARK: BODY
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(.secondary)
                    .padding(.leading, 50)
            }
            
            HStack(spacing: 15) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.primary)
                SecureField("", text: $text)
                    .foregroundColor(.primary)
            }//:HStack
            .padding(.leading)
        }//:ZStack
        .frame(width: 360, height: 50)
        .background(ZStack {
            Color.secondary.opacity(0.3)
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.secondary.opacity(0.8), lineWidth: 1))
        })
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(text: Binding.constant("Hello"), placeholder: Text("World"), imageName: "ted")
    }
}
