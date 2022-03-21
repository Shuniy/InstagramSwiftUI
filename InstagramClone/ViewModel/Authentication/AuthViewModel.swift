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
    @Published var currentUser: User?
    
    init() {
        sessionUser = Auth.auth().currentUser
        fetchUser()
        print("User fetched!", sessionUser!)
    }
    
    static let shared = AuthViewModel()
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [unowned self] result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let user = result?.user else {
                return
            }
            self.sessionUser = user
            fetchUser()
            print("User logged In!")
        }
    }
    
    func register(withEmail email: String, password: String, username: String, fullname: String) {
        print("Registration Started!")
        Auth.auth().createUser(withEmail: email, password: password) { [unowned self] result, error in
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
            self.sessionUser = user
            fetchUser()
        }
    }
    
    func logout() {
        self.sessionUser = nil
        try? Auth.auth().signOut()
    }
    
    func fetchUser() {
        guard let uid = sessionUser?.uid else {
            print("Session user id not found!")
            return
        }
        
        Firestore.firestore().collection("users").document(uid).getDocument { snap, error in
            if let error = error {
                print("Error: ", error.localizedDescription)
                return
            }
            guard let user = try? snap?.data(as: User.self) else {
                print("Can't decode snapshot to User")
                return
            }
            self.currentUser = user
        }
    }
}
