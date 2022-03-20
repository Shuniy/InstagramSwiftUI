//
//  AuthViewModel.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 20/03/22.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var sessionUser: Firebase.User?
    
    init() {
        sessionUser = Auth.auth().currentUser
    }
    
    static let shared = AuthViewModel()
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let user = result?.user else {
                return
            }
            self.sessionUser = user
            print("User logged In!")
        }
    }
    
    func register(withEmail email: String, password: String, username: String, fullname: String) {
        print("Registration Started!")
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else {
                return
            }
            let data = ["email":email,
                        "username":username,
                        "fullname":fullname,
                        "uid": user.uid]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { error in
                    if let error = error {
                        print(error.localizedDescription)
                        return
                    }
                    print("User Created!")
                }
            self.login(withEmail: email, password: password)
        }
    }
    
    func logout() {
        self.sessionUser = nil
        try? Auth.auth().signOut()
    }
}
