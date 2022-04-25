//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                ProfileHeaderView(viewModel: ProfileViewModel(user: user))
                if let currentProfileID = user.id {
                    PostGridView(config: .profile(currentProfileID))
                }
            }
            .padding(.top)
        }
    }
}
