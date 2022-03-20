//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct ProfileView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var authViewModel: AuthViewModel
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 32) {
                    ProfileHeaderView()
                        .padding()
                    PostGridView()
                }//:VStack
                .padding(.top)
            }//:ScrollView
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        authViewModel.logout()
                    } label: {
                        Text("Log Out")
                    }
                }//:ToolBarItem
            }//:toolbar
        }//:NavigationView
    }
    
    //MARK: FUNCTIONS
    
}

//MARK: PREVIEW
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
