//
//  UploadPostViewModel.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 25/04/22.
//

import Foundation
import SwiftUI
import Firebase

class UploadPostViewModel: ObservableObject {
    func uploadPost(image: UIImage, caption: String) {
        guard let user = AuthViewModel.shared.currentUser else { return }
        
        ImageUploader.uploadImage(image: image, type: .post) { imageURL in
            guard let uid = user.id else { return }
            let data = ["caption" : caption,
                        "timestamp" : Timestamp(date: Date()),
                        "likes": 0,
                        "imageURL" : imageURL,
                        "ownerUid" : uid,
                        "ownerUsername" : user.username ] as [String : Any]
            Firestore.firestore().collection("posts").addDocument(data: data) { err in
                if let err = err {
                    print(err.localizedDescription)
                    return
                }
            }
        }
    }
}
