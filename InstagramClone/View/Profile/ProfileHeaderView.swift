//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    //MARK: PROPERTIES
    @State var selectedImage: UIImage?
    @State var userImage: Image? = Image("profile-placeholder")
    @State var imagePickerRepresented = false
    @ObservedObject var viewModel: ProfileViewModel
    
    //MARK: BODY
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    if let imageURL = viewModel.user.profileImageURL {
                        KFImage(URL(string: imageURL))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80, alignment: .center)
                            .clipShape(Circle())
                    } else {
                        Button {
                            self.imagePickerRepresented.toggle()
                        } label: {
                            userImage?
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80, alignment: .center)
                                .clipShape(Circle())
                        }.sheet(isPresented: $imagePickerRepresented) {
                            loadImage()
                        } content: {
                            ImagePicker(image: $selectedImage)
                        }
                    }
                }
                Spacer()
                HStack(spacing: 16) {
                    UserStatsView(value: 210, title: "Posts")
                    UserStatsView(value: 211, title: "Followers")
                    UserStatsView(value: 212, title: "Following")
                }//:HStack
            }//:HStack
            Text(viewModel.user.fullname)
                .font(.system(size: 15, weight: .bold))
        }//:VStack
    }
}

extension ProfileHeaderView {
    func loadImage() {
        guard let selectedImage = selectedImage else {
            return
        }
        viewModel.changeProfileImage(image: selectedImage) { image in
            userImage = image
        }
    }
}

//MARK: PREVIEW
struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(viewModel: ProfileViewModel())
    }
}
