//
//  UserModel.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 20/03/22.
//

import SwiftUI
import FirebaseFirestoreSwift

struct User: Decodable, Identifiable {
    @DocumentID var id: String?
    let username: String
    let email: String
    let fullname: String
    let profileImageURL: String
}
