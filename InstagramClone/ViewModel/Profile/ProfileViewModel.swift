//
//  ProfileViewModel.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 21/03/22.
//

import SwiftUI
import Firebase

class ProfileViewModel: ObservableObject {
    @Published var user: User
    @ObservedObject private var authViewModel: AuthViewModel
    
    init() {
        self.user = User(uid: nil, username: "", email: "", fullname: "", profileImageURL: nil)
        self.authViewModel = AuthViewModel.shared
        fetchUser()
    }
    
    func fetchUser() {
        if let user = self.authViewModel.currentUser {
            self.user = user
        }
    }
    
    func changeProfileImage(image: UIImage, completion: @escaping (Image) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.3) else{
            return
        }
        
        let filename = UUID().uuidString
        let reference = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        reference.putData(imageData, metadata: nil) { result, error in
            if let error = error {
                print("Can't Upload to firebase storage", error.localizedDescription)
                return
            }
            completion(Image(uiImage: image))
            reference.downloadURL { url, error in
                if let error = error {
                    print("Can't generate download url", error.localizedDescription)
                    return
                }
                guard let imageURL = url?.absoluteString else {
                    print("Can't find absolute string")
                    return
                }
                guard let uid = self.user.uid else {
                    print("Can't fing user id")
                    return
                }
                Firestore.firestore().collection("users").document(uid).updateData(["profileImageURL": imageURL]) { error in
                    if let error = error {
                        print("Unable to update imageURL in firestore", error.localizedDescription)
                        return
                    }
                }
            }
        }
    }
}
