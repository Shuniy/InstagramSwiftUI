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
    @State var postImage: Image
    @State var captionText = ""
    
    //MARK: BODY
    var body: some View {
        Image(systemName: "plus.circle")
            .resizable()
            .scaledToFill()
            .frame(width:180, height: 180)
            .clipped()
            .padding(.top)
            .foregroundColor(.black)
    }
}

//MARK: PREVIEW
struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
//        UploadPostView()
        EmptyView()
    }
}
