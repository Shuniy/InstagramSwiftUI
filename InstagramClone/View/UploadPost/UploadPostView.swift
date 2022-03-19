//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct UploadPostView: View {
    //MARK: PROPERTIES
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    @State var imagePickerRepresented = false
    
    //MARK: BODY
    var body: some View {
        if postImage == nil {
            Button {
                self.imagePickerRepresented.toggle()
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width:180, height: 180)
                    .clipped()
                    .padding(.top)
                    .foregroundColor(Color.primary)
            }//:Button
            .sheet(isPresented: $imagePickerRepresented) {
                loadImage()
            } content: {
                ImagePicker(image: $selectedImage)
            }//:sheet
        }//: if nil
        else if let image = postImage {
            VStack {
                HStack(alignment: .top) {
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96, alignment: .center)
                        .clipped()
                    TextAreaView(text: $captionText, placeholder: "Enter Caption...")
                }
                .padding()
                Button {
                    
                } label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50, alignment: .center)
                        .background(.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Spacer()
            }//:VStack
        }//: else
    }
}

//MARK: PREVIEW
struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}

//MARK: EXTENSION
extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else {
            return
        }
        postImage = Image(uiImage: selectedImage)
    }
}
