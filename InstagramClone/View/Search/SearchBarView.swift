//
//  SearchBarView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 30/01/22.
//

import SwiftUI

struct SearchBarView: View {
    //MARK: PREOPERTIES
    @Binding var text: String
    @Binding var isEditing: Bool
    
    //MARK: BODY
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(9)
                .padding(.horizontal, 25)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(9)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    })//:Overlay
            Button(action: {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            }, label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 9)
                    .transition(.move(edge: .trailing))
                    .animation(.default, value: 1)
            })//:Button
        }//:HStack
        .onTapGesture {
            isEditing = true
        }
    }//:Body
}

//MARK: PREVIEW
struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
//        SearchBarView()
        EmptyView()
    }
}
