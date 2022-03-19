//
//  TextAreaView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI

struct TextAreaView: View {
    //MARK: PROPERTIES
    @Binding var text: String
    let placeholder: String
    
    init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
        UITextView.appearance().backgroundColor = .clear
    }
    
    //MARK: BODY
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(uiColor: UIColor.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            TextEditor(text: $text)
                .padding(4)
        }//:ZStack
        .font(.body)
    }
}

//MARK: PREVIEW
struct TextAreaView_Previews: PreviewProvider {
    static var previews: some View {
        TextAreaView(text: Binding.constant("Hello World"), placeholder: "Enter Something...")
    }
}
